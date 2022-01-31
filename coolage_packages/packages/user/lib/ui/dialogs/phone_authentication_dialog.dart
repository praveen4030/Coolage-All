import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:core/ui/widgets/country_code_widget.dart';
import 'package:country_code_picker/country_code.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:user/ui/dialogs/verify_otp_dialog.dart';
import 'package:user/user.dart';

class PhoneAuthenticationDialog extends StatefulWidget {
  PhoneAuthenticationDialog({Key? key}) : super(key: key);

  @override
  _PhoneAuthenticationDialogState createState() =>
      _PhoneAuthenticationDialogState();
}

class _PhoneAuthenticationDialogState extends State<PhoneAuthenticationDialog> {
  final phoneTEC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String? verificationId;
  final firebaseAuth = FirebaseAuth.instance;
  CountryCode countryCode = CountryCode.fromDialCode("+91");
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MediaQuery.of(context).viewInsets,
      child: Form(
        key: formKey,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const CustomText(
                text: "Your phone number",
                fontSize: 30,
              ),
              const SizedBox(
                height: 12,
              ),
              const CustomText(
                text: "You'll get a code for verification",
                fontSize: 14,
                color: Kolors.greyBlue,
                fontFamily: Fonts.CONTENT_FONT,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(
                height: 52,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: CountryCodeWidget(onChanged: (CountryCode c) {
                      setState(() {
                        countryCode = c;
                      });
                    }),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    flex: 3,
                    child: TextFieldLineWidget(
                      textInputType: TextInputType.number,
                      controller: phoneTEC,
                      listInputFormatter: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ], //
                      hint: "Phone Number",
                      validationFn: (val) {
                        return val?.isNotEmpty ?? false
                            ? Functions.validatePhoneNo(val!)
                                ? null
                                : 'Enter phone number'
                            : "Enter valid phone number";
                      },
                      labelStyle: TextStyle(
                        fontSize: 18,
                        color: Kolors.greyBlue.withOpacity(0.5),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              Center(
                child: ButtonWid(
                  isLoading: isLoading,
                  onTap: () {
                    if (formKey.currentState!.validate() &&
                        phoneTEC.text.length == 10) {
                      tempPhoneAuth();
                    } else if (phoneTEC.text.length != 10) {
                      Fluttertoast.showToast(
                          msg: 'Please enter a valid phone number');
                    }
                  },
                  text: "PROCEED",
                  color: Kolors.secondaryColor2,
                  borderRadius: 25,
                  height: 40,
                  width: 172,
                ),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> tempPhoneAuth() async {
    await AuthFunctions.reauthenticateUser();

    await AuthPhoneLogin.signInWithPhoneNo(
        countryCode: countryCode,
        phoneNo: phoneTEC.text,
        setLoadingFn: (val) {
          setState(() {
            isLoading = val;
          });
        },
        onSuccessWeb: (result) async {
          Navigator.of(context).pop();
          await showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              context: context,
              builder: (context) {
                return VerifyOTPDialog(
                  verificationId: null,
                  resentToken: null,
                  countryCode: countryCode.dialCode ?? "+91",
                  confirmationResult: result,
                  mobileNo: phoneTEC.text,
                );
              });
        },
        onSuccessApp: (verificationId, resendToken) async {
          Navigator.of(context).pop();
          await showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              context: context,
              builder: (context) {
                return VerifyOTPDialog(
                  countryCode: countryCode.dialCode ?? "+91",
                  confirmationResult: null,
                  verificationId: verificationId,
                  resentToken: resendToken,
                  mobileNo: phoneTEC.text,
                );
              });
        });
  }
}

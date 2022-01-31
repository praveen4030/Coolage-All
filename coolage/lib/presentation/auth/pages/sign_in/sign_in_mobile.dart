import 'package:coolage/presentation/auth/pages/verify_otp.dart';
import 'package:core/core.dart';
import 'package:core/ui/widgets/country_code_widget.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:user/user.dart';

class SignInMobileWidget extends StatefulWidget {
  const SignInMobileWidget({Key? key}) : super(key: key);

  @override
  State<SignInMobileWidget> createState() => _SignInMobileWidgetState();
}

class _SignInMobileWidgetState extends State<SignInMobileWidget> {
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
  final _auth = FirebaseAuth.instance;
  CountryCode countryCode = CountryCode.fromDialCode("+91");
  String? verificationId;
  final phoneTEC = TextEditingController();
  bool isEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: "Login with Mobile",
          fontSize: 24,
        ),
        const SizedBox(
          height: 16,
        ),
        Form(
          key: formKey,
          onChanged: () {
            if (phoneTEC.text.isNotEmpty &&
                Functions.validatePhoneNo(phoneTEC.text)) {
              setState(() {
                isEnabled = true;
              });
            } else {
              setState(() {
                isEnabled = false;
              });
            }
          },
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
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
                      height: 40,
                    ),
                  ],
                ),
              ),
              ContinueButton(
                isEnabled: isEnabled,
                isLoading: isLoading,
                isOnlyButton: true,
                text: "Proceed",
                onTap: () {
                  tempPhoneAuth();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> tempPhoneAuth() async {
    await AuthPhoneLogin.signInWithPhoneNo(
        countryCode: countryCode,
        phoneNo: phoneTEC.text,
        setLoadingFn: (val) {
          setState(() {
            isLoading = val;
          });
        },
        onSuccessWeb: (result) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => VerifyOTPPage(
              verificationId: null,
              resentToken: null,
              mobileNo: phoneTEC.text,
              countryCode: countryCode.dialCode ?? "+91",
              isFlowDuringOnboarding: false,
              confirmationResult: result,
            ),
          ));
        },
        onSuccessApp: (verificationId, resendToken) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => VerifyOTPPage(
              verificationId: verificationId,
              resentToken: resendToken,
              mobileNo: phoneTEC.text,
              countryCode: countryCode.dialCode ?? "+91",
              isFlowDuringOnboarding: false,
              confirmationResult: null,
            ),
          ));
        });
  }
}

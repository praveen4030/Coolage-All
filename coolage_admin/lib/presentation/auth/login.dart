import 'package:coolage_admin/presentation/auth/verify.dart';
import 'package:core/core.dart';
import 'package:core/ui/widgets/country_code_widget.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
  final _auth = FirebaseAuth.instance;
  CountryCode countryCode = CountryCode.fromDialCode("+91");
  String? verificationId;
  final phoneTEC = TextEditingController();
  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
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
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Navigator.canPop(context))
                  Container(
                    padding: const EdgeInsets.only(top: 24),
                    child: const BackButtonWidget(),
                  ),
                // if (Navigator.canPop(context))
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
                  text: "You’ll get a code for verification",
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
                const Spacer(),
                Row(
                  children: const [
                    IconImagesWid(
                      iconName: "secure.png",
                      color: Kolors.greyBlue,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: CustomText(
                        text:
                            "We never share this with anyone, nor is it visible on your profile",
                        fontSize: 14,
                        color: Kolors.greyBlue,
                        fontFamily: Fonts.CONTENT_FONT,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
        bottomSheet: ContinueButton(
          isLoading: isLoading,
          isEnabled: isEnabled,
          onTap: () async {
            if (formKey.currentState!.validate() &&
                phoneTEC.text.length == 10) {
              tempPhoneAuth();
            } else if (phoneTEC.text.length != 10) {
              Fluttertoast.showToast(msg: 'Please enter a valid phone number');
            }
          },
        ),
      ),
    );
  }

  Future<void> tempPhoneAuth() async {
    setState(() {
      isLoading = true;
    });
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '${countryCode.dialCode}${phoneTEC.text}',
      verificationCompleted: (PhoneAuthCredential credential) {
        setState(() {
          isLoading = false;
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        setState(() {
          isLoading = false;
        });
        final error = e.message ?? 'Something went wrong';
        FlushbarHelper.createError(message: error).show(context);
      },
      codeSent: (verificationId, resendToken) {
        setState(() {
          isLoading = false;
        });
        debugPrint("OTP sent: $verificationId");
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => VerifyLoginPage(
            verificationId: verificationId,
            resentToken: resendToken,
            mobileNo: phoneTEC.text,
            countryCode: countryCode.dialCode ?? "+91",
          ),
        ));
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        setState(() {
          isLoading = false;
        });
      },
    );
  }
}

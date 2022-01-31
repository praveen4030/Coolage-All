import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage/presentation/auth/pages/verify_otp.dart';
import 'package:coolage/presentation/core/widgets/onboarding_progress_bar.dart';
import 'package:core/core.dart';
import 'package:core/ui/widgets/country_code_widget.dart';
import 'package:country_code_picker/country_code.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/user.dart';

class PhoneAuthenticationPage extends StatefulWidget {
  const PhoneAuthenticationPage({Key? key}) : super(key: key);

  @override
  _PhoneAuthenticationPageState createState() =>
      _PhoneAuthenticationPageState();
}

class _PhoneAuthenticationPageState extends State<PhoneAuthenticationPage> {
  final phoneTEC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String? verificationId;
  final firebaseAuth = FirebaseAuth.instance;
  CountryCode countryCode = CountryCode.fromDialCode("+91");
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 1,
              ),
              const OnboardingProgressBar(
                stepNo: 1,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 24),
                        child: const BackButtonWidget(),
                      ),
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
                            child:
                                CountryCodeWidget(onChanged: (CountryCode c) {
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
            ],
          ),
        ),
        bottomSheet: ContinueButton(
          isLoading: isLoading,
          isEnabled: true,
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
              isFlowDuringOnboarding: true,
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
              isFlowDuringOnboarding: true,
              confirmationResult: null,
            ),
          ));
        });
  }
}

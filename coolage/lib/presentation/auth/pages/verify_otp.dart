import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage/presentation/auth/pages/user_name_page.dart';
import 'package:coolage/presentation/auth/redirect_based_on_details.dart';
import 'package:coolage/presentation/core/widgets/onboarding_progress_bar.dart';
import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/user.dart';

class VerifyOTPPage extends StatefulWidget {
  final ConfirmationResult? confirmationResult;
  final String? verificationId;
  final int? resentToken;
  final String mobileNo;
  final String countryCode;
  final bool isFlowDuringOnboarding;
  const VerifyOTPPage({
    Key? key,
    required this.confirmationResult,
    required this.verificationId,
    required this.resentToken,
    required this.mobileNo,
    required this.countryCode,
    required this.isFlowDuringOnboarding,
  }) : super(key: key);

  @override
  State<VerifyOTPPage> createState() => _VerifyOTPPageState();
}

class _VerifyOTPPageState extends State<VerifyOTPPage> {
  final otpTEC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
  bool isResendingOtp = false;
  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          onChanged: () {
            if (otpTEC.text.length == 6) {
              setState(() {
                isEnabled = true;
              });
            } else {
              setState(() {
                isEnabled = false;
              });
            }
          },
          child: Column(
            children: [
              if (widget.isFlowDuringOnboarding)
                const SizedBox(
                  height: 1,
                ),
              if (widget.isFlowDuringOnboarding)
                const OnboardingProgressBar(
                  stepNo: 2,
                ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 32, right: 20),
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
                        text: "Verification Code",
                        fontSize: 30,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      RichText(
                        text: TextSpan(
                          text:
                              "Enter the code you just recived at ${Functions.getHiddenPhoneNo(widget.mobileNo)}",
                          style: const TextStyle(
                            fontSize: 14,
                            color: Kolors.greyBlue,
                            fontFamily: Fonts.CONTENT_FONT,
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            TextSpan(
                              text: " change ?",
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context).pop();
                                },
                              style: const TextStyle(
                                fontSize: 14,
                                color: Kolors.primaryColor1,
                                fontFamily: Fonts.CONTENT_FONT,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      OTPPinFields(
                        textEditingController: otpTEC,
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      // const Spacer(),
                      Row(
                        children: [
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                text: "Didn't recived anything? ",
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Kolors.greyBlue,
                                  fontFamily: Fonts.CONTENT_FONT,
                                  fontWeight: FontWeight.w400,
                                ),
                                children: [
                                  TextSpan(
                                    text: isResendingOtp
                                        ? "Resending Code..."
                                        : " Resend Code ",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        resentOTP();
                                      },
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Kolors.primaryColor1,
                                      fontFamily: Fonts.CONTENT_FONT,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (isResendingOtp)
                            Container(
                              height: 20,
                              width: 20,
                              alignment: Alignment.center,
                              child: const CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation(
                                    Kolors.primaryColor1),
                              ),
                            )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomSheet: ContinueButton(
          isEnabled: isEnabled,
          isLoading: isLoading,
          onTap: () {
            signIn();
          },
        ),
      ),
    );
  }

  Future<void> signIn() async {
    await AuthPhoneLogin.verifyOTP(
        otp: otpTEC.text,
        confirmationResult: widget.confirmationResult,
        verificationId: widget.verificationId,
        setLoadingFn: (val) {
          setState(() {
            isLoading = val;
          });
        },
        onSuccess: () async {
          await checkIfUserExists();
        });
  }

  Future<void> resentOTP() async {
    await AuthPhoneLogin.resendOTP(
      countryCode: widget.countryCode,
      phoneNo: widget.mobileNo,
      resendToken: widget.resentToken,
      confirmationResult: widget.confirmationResult,
      setLoadingFn: (val) {
        setState(() {
          isResendingOtp = val;
        });
      },
    );
  }

  Future<void> checkIfUserExists() async {
    setState(() {
      isLoading = false;
    });
    AuthNavigation.redirectUserBasedOnDetails(
      context,
    );
  }
}

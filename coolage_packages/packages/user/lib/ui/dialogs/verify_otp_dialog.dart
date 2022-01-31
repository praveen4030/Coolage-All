import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/ui/dialogs/phone_authentication_dialog.dart';
import 'package:user/user.dart';

class VerifyOTPDialog extends StatefulWidget {
  final ConfirmationResult? confirmationResult;
  final String? verificationId;
  final int? resentToken;
  final String mobileNo;
  final String countryCode;

  final bool isReauthenticatingUser;
  final Function? onReauthentication;
  VerifyOTPDialog({
    Key? key,
    required this.confirmationResult,
    required this.verificationId,
    required this.resentToken,
    required this.countryCode,
    required this.mobileNo,
    this.isReauthenticatingUser = false,
    this.onReauthentication,
  }) : super(key: key);

  @override
  _VerifyOTPDialogState createState() => _VerifyOTPDialogState();
}

class _VerifyOTPDialogState extends State<VerifyOTPDialog> {
  final otpTEC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
  bool isResendingOtp = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MediaQuery.of(context).viewInsets,
      child: Form(
        key: formKey,
        child: Container(
          padding: const EdgeInsets.only(left: 32, right: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                    if (!widget.isReauthenticatingUser)
                      TextSpan(
                        text: " change ?",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            changePhoneNo();
                          },
                        style: const TextStyle(
                          fontSize: 14,
                          color: Kolors.secondaryColor2,
                          fontFamily: Fonts.CONTENT_FONT,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              OTPPinFields(
                textEditingController: otpTEC,
                color: Kolors.secondaryColor2,
              ),
              const SizedBox(
                height: 52,
              ),
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
                              color: Kolors.secondaryColor2,
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
                        valueColor:
                            AlwaysStoppedAnimation(Kolors.primaryColor1),
                      ),
                    )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: ButtonWid(
                  isLoading: isLoading,
                  onTap: () {
                    if (widget.isReauthenticatingUser) {
                      reauthenticateUser();
                    } else {
                      signIn();
                    }
                  },
                  text: "VERIFY",
                  color: Kolors.secondaryColor2,
                  borderRadius: 25,
                  height: 40,
                  width: 172,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> changePhoneNo() async {
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
          return PhoneAuthenticationDialog();
        });
  }

  Future<void> reauthenticateUser() async {
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
          if (widget.onReauthentication != null) {
            widget.onReauthentication!();
          }
        });
  }

  Future<void> signIn() async {
    await AuthPhoneLogin.verifyOTPToLinkCredential(
        otp: otpTEC.text,
        confirmationResult: widget.confirmationResult,
        verificationId: widget.verificationId,
        setLoadingFn: (val) {
          setState(() {
            isLoading = val;
          });
        },
        onSuccess: () async {
          final user = context.read<AuthenticationBloc>().state.coolUser!;
          user.phoneNo = widget.mobileNo;
          context
              .read<AuthenticationBloc>()
              .add(AuthenticationEvent.userModified(user: user));
          context
              .read<AuthenticationBloc>()
              .add(AuthenticationEvent.updateUserDetails(coolUser: user));
          Navigator.of(context).pop();
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

    setState(() {
      isResendingOtp = true;
    });
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: widget.mobileNo,
      forceResendingToken: widget.resentToken,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (verificationId, resendToken) {
        setState(() {
          isResendingOtp = false;
        });
        debugPrint("OTP sent: $verificationId");
        Fluttertoast.showToast(msg: "OTP resent successfully");
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}

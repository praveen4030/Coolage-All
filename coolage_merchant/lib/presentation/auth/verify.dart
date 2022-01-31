import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/presentation/core/functions/app_start_function.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_layout.dart';
import 'package:coolage_merchant/presentation/core/widgets/purple_gradient_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:coolage_merchant/application/auth/authentication_bloc.dart';
import 'package:coolage_merchant/domain/user/cool_user.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/button.dart';
import 'package:coolage_merchant/presentation/core/widgets/pin_fields.dart';
import 'package:coolage_merchant/presentation/routes/router.gr.dart';
import 'package:coolage_merchant/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class VerifyLoginPage extends StatefulWidget {
  final String? verificationId;
  final int? resentToken;
  final String? mobileNo;
  final ConfirmationResult? result;
  const VerifyLoginPage({
    Key? key,
    @required this.verificationId,
    @required this.resentToken,
    this.result,
    @required this.mobileNo,
  }) : super(key: key);

  @override
  _VerifyLoginPageState createState() => _VerifyLoginPageState();
}

class _VerifyLoginPageState extends State<VerifyLoginPage> {
  final TextEditingController otpTEC = TextEditingController(text: "");
  final formKey = GlobalKey<FormState>();
  String? verificationId;
  bool? isLoading = false;
  @override
  void initState() {
    super.initState();
    verificationId = widget.verificationId;
  }

  @override
  Widget build(BuildContext context) {
    return CustomLayout(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/images/coolage.png',
                    height: 36,
                    width: 94,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "We've sent you an SMS with a 6-digit verification code to ${widget.mobileNo!}",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Kolors.fontColor,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                PinCodeFields(
                  textEditingController: otpTEC,
                ),
                const SizedBox(height: 50),
                Center(
                  child: PurpleGradientButton(
                    width: 150,
                    isLoading: isLoading!,
                    onTap: () async {
                      if (formKey.currentState!.validate()) {
                        await signIn();
                      }
                    },
                    text: "VERIFY",
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Haven't received your OTP yet?",
                style: TextStyle(
                  fontSize: 14,
                  color: Kolors.fontColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  resentOTP();
                },
                child: const Text(
                  "Resend",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: Fonts.CONTENT_FONT,
                    color: Kolors.secondaryColor1,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> signIn() async {
    setState(() {
      isLoading = true;
    });
    try {
      FirebaseAuth _auth = FirebaseAuth.instance;
      if (kIsWeb) {
        UserCredential userCredential = await widget.result!.confirm(
          otpTEC.text,
        );
        if (userCredential.user != null) {
          Fluttertoast.showToast(msg: "Sign In Successful");
          await checkIfUserExists();
        }
      } else {
        final AuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
          verificationId: widget.verificationId!,
          smsCode: otpTEC.text,
        );
        await _auth
            .signInWithCredential(phoneAuthCredential)
            .then((value) async {
          Fluttertoast.showToast(msg: "Sign In Successful");
          AppStartFunction.startingBlocEvents(context);
          await checkIfUserExists();
        }).catchError((e) {
          Fluttertoast.showToast(msg: "Sign In Failed ${e.toString()}");
        });
      }
    } on FirebaseException catch (e) {
      setState(() {
        isLoading = true;
      });
    } catch (e) {
      setState(() {
        isLoading = true;
      });
    }
  }

  Future<void> checkIfUserExists() async {
    final uid = FirebaseAuth.instance.currentUser!.uid;
    final DocumentSnapshot doc =
        await FirebaseFirestore.instance.usersCollection.doc(uid).get();
    if (doc.exists) {
      if (doc.data() != null) {
        CoolUser user = CoolUser.fromMap(doc.data()! as Map<String, dynamic>);
        if (user.canteenId != null && user.canteenId!.isNotEmpty) {
          await updateDeviceToken(user.canteenId!);
          // setState(() {
          //   isLoading = false;
          // });
          context
              .read<AuthenticationBloc>()
              .add(const AuthenticationEvent.authCheckRequested());
          AutoRouter.of(context).popUntilRoot();
          AutoRouter.of(context).replace(const BasePageRoute());
          return;
        }
      }
    }
    // setState(() {
    //   isLoading = false;
    // });
    AutoRouter.of(context).popUntilRoot();
    AutoRouter.of(context).replace(const UserDetailsPageRoute());
  }

  Future<void> resentOTP() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: widget.mobileNo!,
      forceResendingToken: widget.resentToken,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (newVerificationId, resendToken) {
        verificationId = newVerificationId;
        debugPrint("OTP sent: $verificationId");
        Fluttertoast.showToast(msg: "OTP resent successfully");
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  Future<void> updateDeviceToken(String canteenId) async {
    final deviceToken = await FirebaseMessaging.instance.getToken();
    await FirebaseFirestore.instance.canteenBasicDetailsCollection
        .doc(canteenId)
        .update({
      'deviceTokensMap.${Getters.getCurrentUserUid()}': deviceToken,
    });
  }
}

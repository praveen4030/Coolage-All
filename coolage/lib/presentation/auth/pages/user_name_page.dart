import 'package:coolage/application/profile/onboarding/onboarding_bloc.dart';
import 'package:coolage/presentation/auth/pages/choose_profile_pic.dart';
import 'package:coolage/presentation/auth/widgets/get_from_linkedin.dart';
import 'package:coolage/presentation/core/widgets/onboarding_progress_bar.dart';
import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/user.dart';

class UserNamePage extends StatefulWidget {
  const UserNamePage({Key? key}) : super(key: key);

  @override
  _UserNamePageState createState() => _UserNamePageState();
}

class _UserNamePageState extends State<UserNamePage> {
  final firstNameTEC = TextEditingController();
  final middleNameTEC = TextEditingController();
  final lastNameTEC = TextEditingController();
  final formkey = GlobalKey<FormState>();
  bool isEnabled = false;

  @override
  void initState() {
    super.initState();
    getName();
  }

  void getName() {
    final name = FirebaseAuth.instance.currentUser?.displayName;
    if (name?.isNotEmpty ?? false) {
      saveName(name);
    } else {
      final user = context.read<AuthenticationBloc>().state.coolUser;
      if (user != null && (user.name?.isNotEmpty ?? false)) {
        saveName(user.name);
      }
    }
  }

  void saveName(String? name) {
    final nameSplit = name!.split(" ");
    if (nameSplit.isNotEmpty) {
      isEnabled = true;
      firstNameTEC.text = nameSplit[0];
      if (nameSplit.length > 1) {
        lastNameTEC.text = nameSplit.last;
      }
      if (nameSplit.length > 2) {
        middleNameTEC.text = nameSplit[1];
      }
    } else {
      isEnabled = true;
      firstNameTEC.text = name;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 1,
            ),
            const OnboardingProgressBar(
              stepNo: 4,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  onChanged: () {
                    if (firstNameTEC.text.isNotEmpty) {
                      setState(() {
                        isEnabled = true;
                      });
                    } else {
                      setState(() {
                        isEnabled = false;
                      });
                    }
                  },
                  key: formkey,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                    ),
                    margin: const EdgeInsets.only(bottom: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (Navigator.canPop(context))
                          Container(
                            padding: const EdgeInsets.only(top: 24),
                            child: const BackButtonWidget(),
                          ),
                        const SizedBox(
                          height: 40,
                        ),
                        const CustomText(
                          text: "Your Name ",
                          fontSize: 30,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const CustomText(
                          text:
                              "Please put what's on your college id. It will be verified later. ",
                          fontSize: 14,
                          color: Kolors.greyBlue,
                          fontFamily: Fonts.CONTENT_FONT,
                          fontWeight: FontWeight.w400,
                        ),
                        // const SizedBox(
                        //   height: 20,
                        // ),
                        // const GetFromLinkedInWidget(),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 56),
                          child: Column(
                            children: [
                              TextFieldLineWidget(
                                controller: firstNameTEC,
                                hint: "First Name",
                                validationFn: (val) {
                                  return val?.isNotEmpty ?? false
                                      ? null
                                      : 'Enter your first name';
                                },
                                labelStyle: TextStyle(
                                  fontSize: 18,
                                  color: Kolors.greyBlue.withOpacity(0.5),
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              TextFieldLineWidget(
                                controller: middleNameTEC,
                                hint: "Middle Name (if any)",
                                validationFn: (val) {
                                  return null;
                                },
                                labelStyle: TextStyle(
                                  fontSize: 18,
                                  color: Kolors.greyBlue.withOpacity(0.5),
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              TextFieldLineWidget(
                                controller: lastNameTEC,
                                hint: "Last Name",
                                validationFn: (val) {
                                  return null;
                                },
                                labelStyle: TextStyle(
                                  fontSize: 18,
                                  color: Kolors.greyBlue.withOpacity(0.5),
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomSheet: ContinueButton(
          isEnabled: isEnabled,
          onTap: () async {
            if (formkey.currentState!.validate()) {
              final name =
                  "${firstNameTEC.text} ${middleNameTEC.text} ${lastNameTEC.text}";
              context
                  .read<OnboardingBloc>()
                  .add(OnboardingEvent.updateName(name: name));
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ChooseProfilePicPage(),
                ),
              );
            } else {}
          },
        ),
      ),
    );
  }
}

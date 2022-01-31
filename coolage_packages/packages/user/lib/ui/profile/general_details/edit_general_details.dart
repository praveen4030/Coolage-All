import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:user/application/profile/general_details/general_details_bloc.dart';
import 'package:user/ui/profile/widgets/date_drop_down_widget.dart';
import 'package:user/ui/profile/widgets/eye_widget.dart';
import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart' as intl;
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/user.dart';

class EditGenetalDetailsPage extends StatefulWidget {
  const EditGenetalDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  _EditGenetalDetailsPageState createState() => _EditGenetalDetailsPageState();
}

class _EditGenetalDetailsPageState extends State<EditGenetalDetailsPage> {
  bool isEditingMode = false;
  CoolUser? coolUser;
  final formKey = GlobalKey<FormState>();
  final enrollmentNoTEC = TextEditingController();
  final collegeEmailTEC = TextEditingController();
  final phoneNoTEC = TextEditingController();
  final addressLine1TEC = TextEditingController();
  final addressLine2TEC = TextEditingController();
  String sex = "";
  String pronoun = "";
  String impairment = "";
  String nationality = "";
  DateTime? dob;

  bool sexIsVisible = true;
  bool pronounIsVisible = true;
  bool impairmentIsVisible = true;
  bool nationalityIsVisible = true;
  bool dobIsVisible = true;
  bool addressIsVisible = true;
  bool phoneNoIsVisible = true;
  bool emailIsVisible = true;
  bool enrollmentIsVisible = true;

  GeneralDetailsModel? generalDetailsModel;

  @override
  void initState() {
    super.initState();
    coolUser = Getters.getCurrentUser(context);
    if (coolUser!.studentProfileModel != null) {
      if (coolUser!.studentProfileModel!.generalDetailsModel != null) {
        generalDetailsModel =
            coolUser!.studentProfileModel!.generalDetailsModel;

        enrollmentNoTEC.text = generalDetailsModel!.enrollmentNo?.data ?? '';
        collegeEmailTEC.text = generalDetailsModel!.emailId?.data ?? '';
        phoneNoTEC.text = generalDetailsModel!.phoneNo?.data ?? '';

        addressLine1TEC.text =
            generalDetailsModel!.addressModel?.addressLine1! ?? '';
        addressLine2TEC.text =
            generalDetailsModel!.addressModel?.addressLine2 ?? '';

        sex = generalDetailsModel!.sex?.data ?? "";
        pronoun = generalDetailsModel!.pronoun?.data ?? "";
        impairment = generalDetailsModel!.impairment?.data ?? "";
        nationality = generalDetailsModel!.nationality?.data ?? "";
        dob = generalDetailsModel!.dob?.timestamp?.toDate();

        enrollmentIsVisible =
            generalDetailsModel!.enrollmentNo?.isVisible ?? true;
        emailIsVisible = generalDetailsModel!.emailId?.isVisible ?? true;
        phoneNoIsVisible = generalDetailsModel!.phoneNo?.isVisible ?? true;
        addressIsVisible = generalDetailsModel!.addressModel?.isVisible ?? true;
        dobIsVisible = generalDetailsModel!.dob?.isVisible ?? true;
        nationalityIsVisible =
            generalDetailsModel!.nationality?.isVisible ?? true;
        sexIsVisible = generalDetailsModel!.sex?.isVisible ?? true;
        impairmentIsVisible =
            generalDetailsModel!.impairment?.isVisible ?? true;

        pronounIsVisible = generalDetailsModel!.pronoun?.isVisible ?? true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GeneralDetailsBloc, GeneralDetailsState>(
      listener: (context, state) {
        state.actionFailureOpt.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                Navigator.of(context).pop();
                FlushbarHelper.createError(message: failure.error)
                    .show(context);
              },
              (message) {
                Navigator.of(context).pop();
                Fluttertoast.showToast(msg: message);
              },
            );
          },
        );
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Kolors.greyWhite,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: isEditingMode
                  ? CoolageEditAppBar(
                      text: "Edit Details",
                      onSaveTap: () {
                        onSaveTap(context);
                      },
                      isSaving: state.isLoading,
                    )
                  : const CoolageAppBar(
                      isCenter: true,
                      actions: [],
                      text: "Edit Details",
                    ),
            ),
            body: Form(
              key: formKey,
              onChanged: () {
                setState(() {
                  isEditingMode = true;
                });
              },
              child: ListView(
                children: [
                  basicDetailsWidget(),
                  const SizedBox(
                    height: 12,
                  ),
                  addressWidget(),
                  const SizedBox(
                    height: 12,
                  ),
                  otherDetailsWidget(),
                  const SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget addressWidget() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(
                child: CustomText(
                  text: "Address",
                  fontSize: 18,
                  color: Kolors.greyBlue,
                ),
              ),
              EyeWidget(
                isVisible: addressIsVisible,
                onTap: () {
                  setState(() {
                    addressIsVisible = !addressIsVisible;
                    isEditingMode = true;
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          TextFieldLineWidget(
            controller: addressLine1TEC,
            hint: "Address Line 1",
            validationFn: (val) {
              return val?.isNotEmpty ?? false
                  ? null
                  : 'Please add your address line 1';
            },
          ),
          const SizedBox(
            height: 24,
          ),
          TextFieldLineWidget(
            controller: addressLine2TEC,
            hint: "Address Line 2",
            validationFn: (val) {
              return val?.isNotEmpty ?? false
                  ? null
                  : 'Please add your address line 2';
            },
          ),
        ],
      ),
    );
  }

  Widget basicDetailsWidget() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFieldLineWidget(
                  controller: enrollmentNoTEC,
                  hint: "Enrollment No.",
                  validationFn: (val) {
                    return null;
                  },
                ),
              ),
              const SizedBox(width: 66),
              EyeWidget(
                isVisible: enrollmentIsVisible,
                onTap: () {
                  setState(() {
                    enrollmentIsVisible = !enrollmentIsVisible;
                    isEditingMode = true;
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: TextFieldLineWidget(
                  controller: collegeEmailTEC,
                  hint: "College Email Id",
                  validationFn: (val) {
                    if (val == null || val.isEmpty) return null;
                    if (Functions.validateEmailID(val)) {
                      return null;
                    } else {
                      return "Please enter valid email id";
                    }
                  },
                ),
              ),
              const SizedBox(width: 66),
              EyeWidget(
                isVisible: emailIsVisible,
                onTap: () {
                  setState(() {
                    emailIsVisible = !emailIsVisible;
                    isEditingMode = true;
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: TextFieldLineWidget(
                  controller: phoneNoTEC,
                  hint: "Phone No.",
                  validationFn: (val) {
                    return null;
                  },
                ),
              ),
              const SizedBox(width: 66),
              EyeWidget(
                isVisible: phoneNoIsVisible,
                onTap: () {
                  setState(() {
                    phoneNoIsVisible = !phoneNoIsVisible;
                    isEditingMode = true;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget otherDetailsWidget() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: dobWidget(),
              ),
              const SizedBox(width: 36),
              EyeWidget(
                isVisible: dobIsVisible,
                onTap: () {
                  setState(() {
                    dobIsVisible = !dobIsVisible;
                    isEditingMode = true;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: DropDownList(
                  list: Lists.sexList,
                  onChanged: (value) {
                    setState(() {
                      sex = value as String;
                      isEditingMode = true;
                    });
                  },
                  value: sex,
                  hint: "Sex",
                ),
              ),
              const SizedBox(width: 36),
              EyeWidget(
                isVisible: sexIsVisible,
                onTap: () {
                  setState(() {
                    sexIsVisible = !sexIsVisible;
                    isEditingMode = true;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: DropDownList(
                  list: Lists.getPronounList,
                  onChanged: (value) {
                    setState(() {
                      pronoun = value as String;
                      isEditingMode = true;
                    });
                  },
                  value: pronoun,
                  hint: "Pronoun",
                ),
              ),
              const SizedBox(width: 36),
              EyeWidget(
                isVisible: pronounIsVisible,
                onTap: () {
                  setState(() {
                    pronounIsVisible = !pronounIsVisible;
                    isEditingMode = true;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: DropDownList(
                  list: Lists.getImpairmentList,
                  onChanged: (value) {
                    setState(() {
                      impairment = value as String;
                      isEditingMode = true;
                    });
                  },
                  value: impairment,
                  hint: "Impairment",
                ),
              ),
              const SizedBox(width: 36),
              EyeWidget(
                isVisible: impairmentIsVisible,
                onTap: () {
                  setState(() {
                    impairmentIsVisible = !impairmentIsVisible;
                    isEditingMode = true;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: DropDownList(
                  list: Lists.countriesList,
                  value: nationality,
                  onChanged: (value) {
                    setState(() {
                      nationality = value as String;
                      isEditingMode = true;
                    });
                  },
                  hint: "Nationality",
                ),
              ),
              const SizedBox(width: 36),
              EyeWidget(
                isVisible: nationalityIsVisible,
                onTap: () {
                  setState(() {
                    nationalityIsVisible = !nationalityIsVisible;
                    isEditingMode = true;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> onSaveTap(BuildContext context) async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    final model = GeneralDetailsModel(
      enrollmentNo: StringVisible(
        data: enrollmentNoTEC.text,
        isVisible: enrollmentIsVisible,
      ),
      emailId: StringVisible(
        data: collegeEmailTEC.text,
        isVisible: emailIsVisible,
      ),
      phoneNo: StringVisible(
        data: phoneNoTEC.text,
        isVisible: phoneNoIsVisible,
      ),
      addressModel: AddressModel(
        addressLine1: addressLine1TEC.text,
        addressLine2: addressLine2TEC.text,
        isVisible: addressIsVisible,
      ),
      dob: TimestampVisible(
        timestamp: dob != null ? Timestamp.fromDate(dob!) : null,
        isVisible: dobIsVisible,
      ),
      sex: StringVisible(
        data: sex,
        isVisible: sexIsVisible,
      ),
      pronoun: StringVisible(
        data: pronoun,
        isVisible: pronounIsVisible,
      ),
      impairment: StringVisible(
        data: impairment,
        isVisible: impairmentIsVisible,
      ),
      nationality:
          StringVisible(data: nationality, isVisible: nationalityIsVisible),
    );
    context
        .read<GeneralDetailsBloc>()
        .add(GeneralDetailsEvent.updateGeneralDetails(
          onUpdate: () {
            final user = Getters.getCurrentUser(context);
            user.studentProfileModel!.generalDetailsModel = model;
            context
                .read<AuthenticationBloc>()
                .add(AuthenticationEvent.userModified(user: user));
          },
          model: model,
        ));
  }

  Widget dobWidget() {
    return DateDropDownWidget(
      hint: "Date of Birth",
      initialDate: DateTime(2000),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      onTap: (date) async {
        if (date != null) {
          setState(() {
            dob = date as DateTime;
            isEditingMode = true;
          });
        }
      },
      selectedDate: dob,
    );
  }
}

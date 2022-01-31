import 'package:college/college.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class EditProfileStudentInfoWidget extends StatefulWidget {
  final TextEditingController nameTEC;
  final TextEditingController bioTEC;
  final String? branch;
  final String? degree;
  final String? year;
  final String? designation;
  final Function onBranchChange;
  final Function onDesignationChange;
  final Function onYearChange;
  final Function onDegreeChange;
  final String userType;
  const EditProfileStudentInfoWidget({
    Key? key,
    required this.bioTEC,
    required this.nameTEC,
    required this.degree,
    required this.year,
    required this.branch,
    required this.onBranchChange,
    required this.onDegreeChange,
    required this.onYearChange,
    required this.designation,
    required this.userType,
    required this.onDesignationChange,
  }) : super(key: key);

  @override
  State<EditProfileStudentInfoWidget> createState() =>
      _EditProfileStudentInfoWidgetState();
}

class _EditProfileStudentInfoWidgetState
    extends State<EditProfileStudentInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const CardHeaderTextWidget(
            text: "Student Info",
          ),
          const SizedBox(
            height: 32,
          ),
          TextFieldLineWidget(
            controller: widget.nameTEC,
            hint: "Name",
            validationFn: (val) {
              return (val?.isNotEmpty ?? false) ? null : 'Please add your name';
            },
          ),
          const SizedBox(height: 32),
          detailsBasedOnUserType(),
          TextFieldBoxWidget(
            controller: widget.bioTEC,
            minLinesForHeight: 4,
            hint: "Bio",
            maxLength: 50,
            validationFn: (val) {
              return null;
            },
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }

  Widget detailsBasedOnUserType() {
    if (widget.userType == Constants.USER_TYPE_STUDENT) {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                child: DropDownList(
                  list: Functions.getUserCollegeDegrees(context),
                  onChanged: (value) {
                    widget.onDegreeChange(value);
                  },
                  value: widget.degree,
                  hint: "Degree",
                ),
              ),
              if (widget.degree != Constants.PHD_GROUP)
                const SizedBox(width: 20),
              if (widget.degree != Constants.PHD_GROUP)
                Expanded(
                  child: DropDownList(
                    list: Functions.getYearsList(context, widget.degree),
                    onChanged: (value) {
                      //will get only numeric value
                      widget.onYearChange(value);
                    },
                    value:
                        "${Functions.getWithSuffix(int.parse(widget.year ?? "0"))} year",
                    hint: "Year",
                  ),
                ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          DropDownList(
            list: CollegeGetters.getCurrentUserCollegeDepartments(context),
            onChanged: (value) {
              widget.onBranchChange(value);
            },
            value: widget.branch,
            hint: "Department",
          ),
          const SizedBox(
            height: 36,
          ),
        ],
      );
    } else if (widget.userType == Constants.USER_TYPE_FACULTY) {
      return Column(
        children: [
          DropDownList(
            list: CollegeGetters.getCurrentUserCollegeDesignations(context),
            onChanged: (value) {
              widget.onDesignationChange(value);
            },
            value: widget.designation,
            hint: "Designation",
          ),
          const SizedBox(
            height: 24,
          ),
          DropDownList(
            list: CollegeGetters.getCurrentUserCollegeDepartments(context),
            onChanged: (value) {
              widget.onBranchChange(value);
            },
            value: widget.branch,
            hint: "Department",
          ),
          const SizedBox(
            height: 36,
          ),
        ],
      );
    }
    return Container();
  }
}

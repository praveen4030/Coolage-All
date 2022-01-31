import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/application/profile/user_details/user_details_bloc.dart';
import 'package:user/ui/profile/widgets/eye_widget.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:user/user.dart';

class EducationDetailTile extends StatelessWidget {
  final EducationDetailsModel educationDetailsModel;
  final bool isDivider;
  final bool isShowingVisibleButton;

  const EducationDetailTile({
    Key? key,
    required this.educationDetailsModel,
    this.isShowingVisibleButton = true,
    this.isDivider = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, state) {
        if (!state.isCurrentUser &&
            !(educationDetailsModel.isVisible ?? false)) {
          return Container();
        }
        return Container(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomText(
                      text: educationDetailsModel.degree,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  CustomText(
                    text: dateStr(educationDetailsModel),
                    fontSize: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              CustomText(
                text: educationDetailsModel.stream,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Kolors.greyBlue,
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: educationDetailsModel.institute,
                            fontSize: 14,
                            color: Kolors.primaryColor1,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              const CustomText(
                                text: "CGPA/Percentage - ",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Kolors.greyBlue,
                              ),
                              CustomText(
                                text: educationDetailsModel.performance,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Kolors.greyBlue,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (!(educationDetailsModel.isVisible ?? true) &&
                      isShowingVisibleButton)
                    EyeWidget(
                      isVisible: educationDetailsModel.isVisible!,
                    )
                ],
              ),
              if (isDivider)
                const SizedBox(
                  height: 20,
                ),
              if (isDivider)
                Divider(
                  thickness: 2,
                  height: 2,
                  color: Kolors.greyBlue.withOpacity(0.2),
                )
            ],
          ),
        );
      },
    );
  }

  String dateStr(EducationDetailsModel model) {
    return DateFormat('y').format(model.completionDate!.toDate());
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/application/profile/user_details/user_details_bloc.dart';
import 'package:user/ui/profile/widgets/eye_widget.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:user/user.dart';

class WorkExperienceTile extends StatelessWidget {
  final WorkExperienceModel model;
  final bool isDivider;
  final bool isShowingVisibleButton;

  const WorkExperienceTile({
    Key? key,
    required this.model,
    this.isDivider = true,
    this.isShowingVisibleButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, state) {
        if (!state.isCurrentUser && !(model.isVisible ?? false)) {
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
                      text: model.type,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Kolors.greyBlue,
                    ),
                  ),
                  CustomText(
                    text: dateStr(model),
                    fontSize: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              CustomText(
                text: model.title,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomText(
                      text: model.organisation,
                      fontSize: 12,
                      color: Kolors.primaryColor1,
                    ),
                  ),
                  if (!(model.isVisible ?? true) && isShowingVisibleButton)
                    EyeWidget(
                      isVisible: model.isVisible!,
                    )
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              CustomText(
                text: model.description,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Kolors.greyBlue,
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

  String dateStr(WorkExperienceModel model) {
    final str1 = DateFormat('MMM. y').format(model.durationFrom!.toDate());
    if (model.durationTill != null) {
      final str2 = DateFormat('MMM. y').format(model.durationTill!.toDate());
      return "$str1 - $str2";
    } else {
      return "$str1 - Present";
    }
  }
}

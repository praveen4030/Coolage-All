import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/application/profile/user_details/user_details_bloc.dart';
import 'package:user/ui/profile/widgets/eye_widget.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:user/user.dart';

class ProjectTile extends StatelessWidget {
  final ProjectsModel model;
  final bool isDivider;
  final bool isShowingVisibleButton;

  const ProjectTile({
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
                      text: model.title,
                      fontSize: 16,
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
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: model.field,
                          fontSize: 14,
                          color: Kolors.greyBlue,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        CustomText(
                          text: model.organisation,
                          fontSize: 14,
                          color: Kolors.primaryColor1,
                        ),
                      ],
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

  String dateStr(ProjectsModel model) {
    return DateFormat('MMM. y').format(model.completionDate!.toDate());
  }
}

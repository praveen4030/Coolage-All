import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/application/profile/user_details/user_details_bloc.dart';
import 'package:user/ui/profile/widgets/eye_widget.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:user/user.dart';

class AchievementTile extends StatelessWidget {
  final AchievementsModel achievementsModel;
  final bool isDivider;
  final bool isShowingVisibleButton;
  const AchievementTile({
    Key? key,
    required this.achievementsModel,
    this.isDivider = true,
    this.isShowingVisibleButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, state) {
        if (!state.isCurrentUser && !(achievementsModel.isVisible ?? false)) {
          return Container();
        }
        return Container(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomText(
                      text: achievementsModel.achievement,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  if (!(achievementsModel.isVisible ?? true) &&
                      isShowingVisibleButton)
                    EyeWidget(
                      isVisible: achievementsModel.isVisible!,
                    )
                ],
              ),
              if (isDivider)
                const SizedBox(
                  height: 16,
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
}

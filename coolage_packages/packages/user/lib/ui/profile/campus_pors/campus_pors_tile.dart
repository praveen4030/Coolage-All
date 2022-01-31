import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/application/profile/user_details/user_details_bloc.dart';
import 'package:user/ui/profile/widgets/eye_widget.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:user/user.dart';

class CampusPorsTile extends StatelessWidget {
  final CampusPorsModel campusPorsModel;
  final bool isDivider;
  final bool isShowingVisibleButton;

  const CampusPorsTile({
    Key? key,
    required this.campusPorsModel,
    this.isShowingVisibleButton = true,
    this.isDivider = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, state) {
        if (!state.isCurrentUser && !(campusPorsModel.isVisible ?? false)) {
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
                      text: campusPorsModel.title,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  CustomText(
                    text: dateStr(campusPorsModel),
                    fontSize: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 32,
                child: Row(
                  children: [
                    Expanded(
                      child: CustomText(
                        text: campusPorsModel.organisation,
                        fontSize: 14,
                        color: Kolors.primaryColor1,
                      ),
                    ),
                    if (!(campusPorsModel.isVisible ?? true) &&
                        isShowingVisibleButton)
                      EyeWidget(
                        isVisible: campusPorsModel.isVisible!,
                      )
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              CustomText(
                text: campusPorsModel.description,
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

  String dateStr(CampusPorsModel model) {
    final str1 = DateFormat('MMM. y').format(model.startFrom!.toDate());
    if (model.endAt != null) {
      final str2 = DateFormat('MMM. y').format(model.endAt!.toDate());
      return "$str1 - $str2";
    } else {
      return "$str1 - Present";
    }
  }
}

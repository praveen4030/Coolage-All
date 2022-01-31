import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/application/profile/user_details/user_details_bloc.dart';
import 'package:user/ui/profile/widgets/eye_widget.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:user/user.dart';

class LanguageTile extends StatelessWidget {
  final LanguageModel languageModel;
  final bool isDivider;
  final bool isShowingVisibleButton;

  const LanguageTile({
    Key? key,
    required this.languageModel,
    this.isDivider = true,
    this.isShowingVisibleButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, state) {
        if (!state.isCurrentUser && !(languageModel.isVisible ?? false)) {
          return Container();
        }
        return Container(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 32,
                child: Row(
                  children: [
                    Expanded(
                      child: CustomText(
                        text: languageModel.language,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    if (!(languageModel.isVisible ?? true) &&
                        isShowingVisibleButton)
                      EyeWidget(
                        isVisible: languageModel.isVisible!,
                      )
                  ],
                ),
              ),
              if (isDivider)
                const SizedBox(
                  height: 4,
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

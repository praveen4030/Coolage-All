import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/application/profile/user_details/user_details_bloc.dart';

class UserProfileTileHeader extends StatelessWidget {
  final String text;
  final Function onEditTap;
  final Widget child;
  final String iconName;
  const UserProfileTileHeader({
    Key? key,
    required this.child,
    required this.onEditTap,
    required this.text,
    required this.iconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 7),
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Kolors.greyBlue.withOpacity(0.5),
                  ),
                ]),
                child: Column(
                  children: [
                    // Container(
                    //   color: Kolors.greyWhite,
                    //   height: 10,
                    // ),
                    Container(
                      // margin: const EdgeInsets.symmetric(vertical: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Kolors.greyWhite,
                        border: Border.all(
                          color: Kolors.greyWhite,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Kolors.black.withOpacity(0.25),
                            offset: const Offset(0, 4),
                          )
                        ],
                      ),
                      padding: const EdgeInsets.only(left: 44),
                      height: 40,
                      alignment: Alignment.centerLeft,
                      child: CustomText(
                        text: text,
                        color: Kolors.greyBlue,
                        fontSize: 16,
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 10,
                    ),
                    child,
                  ],
                ),
              ),
              Row(
                children: [
                  leftIcon(),
                  const Spacer(),
                  if (state.isCurrentUser) rightIcon(),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget rightIcon() {
    return GestureDetector(
      onTap: () {
        onEditTap();
      },
      child: Container(
        height: 60,
        width: 40,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 12,
              color: Kolors.greyBlue.withOpacity(0.5),
            )
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          ),
          color: Colors.white,
        ),
        child: const Center(
          child: IconImagesWid(
            iconName: 'edit.png',
            color: Kolors.primaryColor1,
            height: 24,
            width: 24,
          ),
        ),
      ),
    );
  }

  Widget leftIcon() {
    return Container(
      height: 60,
      width: 40,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            color: Kolors.greyBlue.withOpacity(0.5),
          )
        ],
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
        color: Colors.white,
      ),
      child: Center(
        child: Image.asset(
          'assets/icons/$iconName.png',
          color: null,
          height: 24,
          width: 24,
        ),
      ),
    );
  }
}

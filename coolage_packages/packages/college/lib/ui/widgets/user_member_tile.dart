import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:user/ui/profile/user_profile.dart';
import 'package:user/user.dart';

class UserMemberTile extends StatelessWidget {
  final CoolUser coolUser;
  final String subtitle;
  const UserMemberTile({
    Key? key,
    required this.coolUser,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => UserProfilePage(coolUser: coolUser),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Kolors.skyBlueColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color: Kolors.greyBlue.withOpacity(0.5),
                      ),
                    ],
                  ),
                  child: UserProfileCircular(
                    image: coolUser.imageUrl,
                    size: 60,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: coolUser.name,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    CustomText(
                      text: subtitle,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Kolors.greyBlue,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 1,
              height: 1,
              color: Kolors.greyBlue.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }
}

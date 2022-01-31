part of college;

class GroupTile extends StatelessWidget {
  final String text;
  const GroupTile({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => GroupDetailsPage(
              groupName: text,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: CustomText(
                    text: text,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                IconImagesWid(
                  iconName: "arrow_right.png",
                  height: 24,
                  width: 12,
                  color: Kolors.greyBlue.withOpacity(0.5),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Divider(
              color: Kolors.greyBlue.withOpacity(0.5),
              thickness: 1,
              height: 2,
            ),
          ],
        ),
      ),
    );
  }
}

part of core;

class DeleteTile extends StatelessWidget {
  final String? text;
  final Function? onTap;
  final bool isDeleting;
  const DeleteTile({
    Key? key,
    @required this.onTap,
    @required this.text,
    this.isDeleting = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            isDeleting
                ? const SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(
                      color: Kolors.redPrimaryColor,
                      strokeWidth: 2,
                    ),
                  )
                : const IconImagesWid(
                    iconName: 'delete.png',
                    height: 24,
                    width: 24,
                    color: Kolors.redPrimaryColor,
                  ),
            const SizedBox(
              width: 48,
            ),
            CustomText(
              text: text,
              color: Kolors.redPrimaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}

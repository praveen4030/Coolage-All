part of core;

class UserProfileCircular extends StatelessWidget {
  final Function? onPressed;
  final String? image;
  final double size;
  const UserProfileCircular({
    Key? key,
    @required this.image,
    this.onPressed,
    this.size = 45,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      child: Container(
        height: size,
        width: size,
        child: image != null && image!.isNotEmpty
            ? CircleAvatar(
                radius: size / 2,
                backgroundImage: image!.isEmpty ? null : NetworkImage(image!),
              )
            : Image.asset(
                'assets/images/avatar_transparent.png',
                height: size,
                width: size,
              ),
      ),
    );
  }
}

part of core;

class EditCircular extends StatelessWidget {
  final Function? onTap;
  const EditCircular({
    Key? key,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: const Icon(
          Icons.mode_outlined,
          color: Kolors.greyBlue,
          size: 20,
        ),
      ),
    );
  }
}

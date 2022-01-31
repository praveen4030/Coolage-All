part of cards;

class CardIndexIndicator extends StatelessWidget {
  final bool? isCurrentPage;
  const CardIndexIndicator({
    Key? key,
    @required this.isCurrentPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      height: 2,
      width: isCurrentPage! ? 28 : 11,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: isCurrentPage!
            ? Kolors.primaryColor1
            : Kolors.greyBlue.withOpacity(0.25),
        // borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}

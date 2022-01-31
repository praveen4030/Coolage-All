part of canteen;

class OrderCommentsPage extends StatelessWidget {
  final TextEditingController? commentTEC;
  const OrderCommentsPage({
    Key? key,
    @required this.commentTEC,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: "Comments for chef",
            color: Kolors.greyBlue,
            fontSize: 14,
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            // margin: const EdgeInsets.only(right: 71),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.message,
                  color: Kolors.greyBlue,
                ),
                const SizedBox(width: 22),
                Expanded(
                  child: TextFormField(
                    controller: commentTEC,
                    maxLines: null,
                    style: const TextStyle(
                      fontFamily: Fonts.CONTENT_FONT,
                      color: Kolors.greyBlack,
                      fontSize: 16,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

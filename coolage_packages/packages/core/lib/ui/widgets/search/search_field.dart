part of core;

class SearchFieldWidget extends StatelessWidget {
  final TextEditingController searchTEC;
  final Function onChanged;
  const SearchFieldWidget({
    Key? key,
    required this.searchTEC,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/search.png',
            height: 20,
            width: 20,
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 1,
            height: 26,
            color: Kolors.greyBlue,
          ),
          Expanded(
            child: TextFormField(
              controller: searchTEC,
              onChanged: (val) {
                onChanged();
              },
              style: const TextStyle(
                fontFamily: Fonts.HEADING_FONT,
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Kolors.greyBlack,
              ),
              textAlignVertical: TextAlignVertical.bottom,
              decoration: const InputDecoration(
                // border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Kolors.white,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Kolors.white,
                  ),
                ),
                hintText: "Search",
                hintStyle: TextStyle(
                  fontFamily: Fonts.CONTENT_FONT,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Kolors.greyLightBlue,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

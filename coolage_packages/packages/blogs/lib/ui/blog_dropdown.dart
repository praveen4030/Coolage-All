part of blogs;

class BlogDropdown extends StatelessWidget {
  final Function? onChanged;
  final String? value;
  const BlogDropdown({
    Key? key,
    @required this.onChanged,
    @required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // child: PopupMenuButton(
        //   onSelected: (val) {
        //     onChanged!(val);
        //   },
        //   offset: const Offset(0, 30),
        //   itemBuilder: (context) => getItemsList(
        //       state.coolageDetailsModel!.onboardedCollegesList!, context),
        //   child: Row(
        //     children: [
        //       Text(
        //         onboardedCollege != null
        //             ? onboardedCollege!.college!
        //             : 'Select College',
        //         style: const TextStyle(
        //           fontSize: 20,
        //           color: Kolors.greyBlack,
        //           fontFamily: Fonts.CONTENT_FONT,
        //           fontWeight: FontWeight.w600,
        //         ),
        //       ),
        //       const Spacer(),
        //       const Icon(Icons.keyboard_arrow_down)
        //     ],
        //   ),
        // ),
        );
  }

  List<PopupMenuEntry<String>> getItemsList(
      List<String> list, BuildContext context) {
    return list.map((value) {
      return PopupMenuItem<String>(
        value: value,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  value,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Kolors.greyBlack,
                    fontFamily: Fonts.CONTENT_FONT,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }).toList();
  }
}

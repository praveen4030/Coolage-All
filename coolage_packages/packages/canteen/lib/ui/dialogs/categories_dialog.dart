part of canteen;

class CategoriesDialog extends StatelessWidget {
  final List<MenuCategoryModel>? categoriesList;
  final Function? onTap;
  const CategoriesDialog({
    Key? key,
    @required this.categoriesList,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(-0.6, 0.6),
      child: Material(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          height: 314,
          constraints: const BoxConstraints(
            maxWidth: 300,
            minWidth: 200,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          child: Scrollbar(
            isAlwaysShown: true,
            child: ListView.builder(
              itemCount: categoriesList!.length,
              itemBuilder: (context, index) {
                return categoryWidget(categoriesList![index], index, context);
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget categoryWidget(
      MenuCategoryModel model, int index, BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!(index);
        Navigator.of(context).pop();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomText(
                    text: model.category,
                    fontFamily: Fonts.CONTENT_FONT,
                    fontSize: 18,
                    color: Kolors.fontColor,
                  ),
                ),
                CustomText(
                  text: model.count!.toString(),
                  fontFamily: Fonts.CONTENT_FONT,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Kolors.greyBlue,
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Divider(
              color: Kolors.greyColor,
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}

part of canteen;

class BrowseMenuWidget extends StatelessWidget {
  final Function? onScroll;
  const BrowseMenuWidget({
    Key? key,
    @required this.onScroll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CanteenDetailsBloc, CanteenDetailsState>(
      builder: (context, state) {
        return FloatingActionButton.extended(
            backgroundColor: Kolors.greyBlack,
            onPressed: () async {
              await showDialog(
                  context: context,
                  builder: (context) {
                    return CategoriesDialog(
                      categoriesList: state.menuCategoriesList,
                      onTap: (int index) {
                        onScroll!(index);
                      },
                    );
                  });
            },
            label: Container(
              child: Row(
                children: const [
                  Icon(
                    Icons.menu_outlined,
                    color: Colors.white,
                    size: 16,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CustomText(
                    text: 'BROWSE MENU',
                    color: Colors.white,
                    fontFamily: Fonts.HEADING_FONT,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
            ));
      },
    );
  }
}

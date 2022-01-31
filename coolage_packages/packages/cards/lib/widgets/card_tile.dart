part of cards;

/// if edit access then define title as well
class CardTile extends StatelessWidget {
  final List<Cards>? cardsList;

  final bool isEdit;
  final Cards? card;
  final double? height;
  final double? width;
  final double? marginRight;
  final double? marginLeft;
  final String titleIfEditAccessForAdmin;
  final Function? onTap;
  const CardTile(
      {Key? key,
      @required this.cardsList,
      @required this.card,
      @required this.height,
      @required this.width,
      @required this.marginLeft,
      @required this.marginRight,
      this.isEdit = true,
      this.onTap,
      this.titleIfEditAccessForAdmin = "Edit Banners"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (CardsCoreFunctionality.isAdmin) {
          if (onTap != null) {
            onTap!();
          }
        } else {
          if (card!.url?.isNotEmpty ?? false) {
            Functions.launchURL(card!.url!);
          }
        }
      },
      child: Container(
        height: height ?? getHeight(context),
        margin: EdgeInsets.only(right: marginRight!, left: marginLeft!),
        width: width ?? MediaQuery.of(context).size.width - 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            SizedBox(
              height: height ?? getHeight(context),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl: card!.image!,
                  fit: BoxFit.fill,
                  height: height ?? getHeight(context),
                  width: width ?? MediaQuery.of(context).size.width - 40,
                  placeholder: (_, __) {
                    return Container(
                      height: 100,
                      color: Kolors.white,
                      child: LogoLoading(),
                    );
                  },
                ),
              ),
            ),
            if (CardsCoreFunctionality.isAdmin && isEdit)
              Container(
                margin: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Kolors.greyBlack,
                ),
                height: 28,
                width: 28,
                padding: const EdgeInsets.all(8),
                child: const IconImagesWid(
                  iconName: 'edit.png',
                  color: Colors.white,
                ),
              ),
          ],
        ),
      ),
    );
  }

  double getHeight(BuildContext context) {
    double height = ((MediaQuery.of(context).size.width - 40) * 16) / 9;
    return height;
  }
}

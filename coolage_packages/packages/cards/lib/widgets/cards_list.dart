part of cards;

class CardsList extends StatefulWidget {
  final List<Cards>? cardsList;
  final double? height;
  final double? width;
  final double? marginRight;
  final double? marginLeft;
  final String titleIfEditAccessForAdmin;
  final bool isEditingCards;
  final Function? onCardTap;
  const CardsList({
    Key? key,
    this.height,
    this.width,
    this.marginRight = 0,
    this.marginLeft = 0,
    this.cardsList,
    this.isEditingCards = true,
    this.titleIfEditAccessForAdmin = "Edit Banners",
    this.onCardTap,
  }) : super(key: key);

  @override
  _CardsListState createState() => _CardsListState();
}

class _CardsListState extends State<CardsList>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  int length = 0;

  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    final cardsList = widget.cardsList;
    length = cardsList!.length;
    return cardsList.isNotEmpty
        ? Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: widget.height ?? 220,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: controller,
                  onPageChanged: (val) {
                    setState(() {
                      currentIndex = val;
                    });
                  },
                  itemCount: cardsList.length,
                  itemBuilder: (context, index) {
                    Cards card = cardsList[index];
                    return CardTile(
                      isEdit: widget.isEditingCards,
                      card: card,
                      cardsList: cardsList,
                      height: widget.height,
                      width: widget.width,
                      marginLeft: widget.marginLeft,
                      marginRight: widget.marginRight,
                      titleIfEditAccessForAdmin:
                          widget.titleIfEditAccessForAdmin,
                      onTap: widget.onCardTap,
                    );
                  },
                ),
              ),
              // const SizedBox(
              //   height: 16,
              // ),
              Container(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    for (int i = 0; i < cardsList.length; i++)
                      CardIndexIndicator(isCurrentPage: currentIndex == i)
                  ],
                ),
              ),
            ],
          )
        : Container();
  }
}

part of cards;

/// if edit access then define title as well
class CardTile extends StatefulWidget {
  final List<Cards>? cardsList;

  final bool isEdit;
  final Cards? card;
  final double? height;
  final double? width;
  final double? marginRight;
  final double? marginLeft;
  final String titleIfEditAccessForAdmin;
  final Function? onTap;
  final Function onChange;
  const CardTile(
      {Key? key,
      @required this.cardsList,
      @required this.card,
      @required this.height,
      @required this.width,
      @required this.marginLeft,
      @required this.marginRight,
      required this.onChange,
      this.isEdit = true,
      this.onTap,
      this.titleIfEditAccessForAdmin = "Edit Banners"})
      : super(key: key);

  @override
  State<CardTile> createState() => _CardTileState();
}

class _CardTileState extends State<CardTile> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovering = false;
        });
      },
      child: GestureDetector(
        onTap: () {
          if (CardsCoreFunctionality.isAdmin) {
            if (widget.onTap != null) {
              widget.onTap!();
            }
          } else {
            if (widget.card!.url?.isNotEmpty ?? false) {
              Functions.launchURL(widget.card!.url!);
            }
          }
        },
        child: Container(
          height: widget.height ?? getHeight(context),
          margin: EdgeInsets.only(
              right: widget.marginRight!, left: widget.marginLeft!),
          width: widget.width ?? MediaQuery.of(context).size.width - 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: widget.height ?? getHeight(context),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CachedNetworkImage(
                        imageUrl: widget.card!.image!,
                        fit: BoxFit.fill,
                        height: widget.height ?? getHeight(context),
                        width: widget.width ??
                            MediaQuery.of(context).size.width - 40,
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
                  if (kIsWeb && isHovering)
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            widget.onChange(false);
                          },
                          child: Container(
                            margin: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Kolors.greyBlack.withOpacity(0.5),
                            ),
                            padding: const EdgeInsets.all(4),
                            child: const Center(
                              child: Icon(
                                Icons.arrow_back_outlined,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            widget.onChange(true);
                          },
                          child: Container(
                            margin: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Kolors.greyBlack.withOpacity(0.5),
                            ),
                            padding: const EdgeInsets.all(4),
                            child: const Center(
                              child: Icon(
                                Icons.arrow_forward_outlined,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                ],
              ),
              if (CardsCoreFunctionality.isAdmin && widget.isEdit)
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
      ),
    );
  }

  double getHeight(BuildContext context) {
    double height = ((MediaQuery.of(context).size.width - 40) * 16) / 9;
    return height;
  }
}

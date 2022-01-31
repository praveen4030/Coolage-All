part of canteen;

class CanteenTile extends StatelessWidget {
  final CanteenBasicDetailsModel? model;
  const CanteenTile({
    Key? key,
    @required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!model!.isClosed()) {
          context.read<CanteenDetailsBloc>().add(
                CanteenDetailsEvent.getCanteenDetails(
                  canteenBasicDetailsModel: model,
                ),
              );
          Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
              builder: (context) =>
                  CanteenDetailsPage(canteenBasicDetailsModel: model)));
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 6,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 8,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: model!.name,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color:
                        model!.isClosed() ? Kolors.greyBlue : Kolors.greyBlack,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (!model!.isClosed())
                    CustomText(
                      text:
                          '${model!.location} | Open till ${model!.closeAtTimeOfDay!.format(context)}',
                      fontFamily: Fonts.CONTENT_FONT,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Kolors.greyBlue,
                    )
                  else
                    closedInfoWidget(context),
                ],
              ),
            ),
            if (model!.image?.isNotEmpty ?? false)
              PhotoViewTap(
                imageUrl: model!.image,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Opacity(
                    opacity: model!.isClosed() ? 0.3 : 1,
                    child: CachedNetworkImage(
                      imageUrl: model!.image!,
                      width: 100,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }

  Widget closedInfoWidget(BuildContext context) {
    final date = DateTime(2021, 01, 01, model!.openAtTimeOfDay!.hour,
        model!.openAtTimeOfDay!.minute);
    final String openAt = DateFormat("h:mm a").format(date);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomText(
              text: '${model!.location} | ',
              fontFamily: Fonts.CONTENT_FONT,
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Kolors.greyBlue,
            ),
            const CustomText(
              text: 'Closed',
              fontFamily: Fonts.CONTENT_FONT,
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Kolors.redPrimaryColor,
            )
          ],
        ),
        CustomText(
          text: 'Opens at $openAt',
          fontFamily: Fonts.CONTENT_FONT,
          fontWeight: FontWeight.w600,
          fontSize: 10,
          color: Kolors.greyColor,
        )
      ],
    );
  }
}

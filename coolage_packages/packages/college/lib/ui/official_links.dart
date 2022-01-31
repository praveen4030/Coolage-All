part of college;

class OfficialLinksWidget extends StatelessWidget {
  final List<OfficialLinks>? officialLinksList;
  const OfficialLinksWidget({
    Key? key,
    @required this.officialLinksList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 40,
          ),
          const CustomText(text: "Official Links"),
          const SizedBox(
            height: 20,
          ),
          GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: CollegeCoreFunctionality.isAdmin
                  ? officialLinksList!.length + 1
                  : officialLinksList!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 16,
                childAspectRatio: 1.6,
              ),
              itemBuilder: (context, index) {
                // return Container(child: CustomText(text: 'dv'));
                if (officialLinksList!.length == index &&
                    CollegeCoreFunctionality.isAdmin) {
                  return addLinkWidget(context);
                }
                return officialLinkWidget(
                    context, officialLinksList![index], index);
              }),
        ],
      ),
    );
  }

  Widget addLinkWidget(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await showDialog(
          context: context,
          builder: (context) {
            return const AddOfficialLinkDialog();
          },
        );
      },
      child: Center(
        child: Container(
          height: 45,
          width: 45,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Kolors.greyBlue,
          ),
          child: const Icon(
            Icons.add,
            size: 15,
            color: Kolors.white,
          ),
        ),
      ),
    );
  }

  Widget officialLinkWidget(
      BuildContext context, OfficialLinks officialLink, int index) {
    return GestureDetector(
      onTap: () async {
        if (CollegeCoreFunctionality.isAdmin) {
          await showDialog(
            context: context,
            builder: (context) {
              return AddOfficialLinkDialog(
                officialLinks: officialLink,
                index: index,
              );
            },
          );
        } else {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  WebViewPage(url: 'https://wwww.${officialLink.link}')));
        }
      },
      onLongPress: () {
        Functions.launchURL('https://wwww.${officialLink.link}');
      },
      child: Container(
        // height: 100,
        margin: EdgeInsets.all(4),
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 12,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Kolors.greyBlue.withOpacity(0.5),
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Row(
                children: [
                  if (officialLink.image?.isEmpty ?? true)
                    Container(
                      height: 32,
                      width: 32,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Kolors.skyBlueColor,
                      ),
                      child: const IconImagesWid(
                        iconName: 'empty_logo.png',
                        height: 32,
                        width: 32,
                        color: Colors.white,
                      ),
                    )
                  else
                    CachedNetworkImage(
                      imageUrl: officialLink.image!,
                      height: 32,
                      width: 32,
                    ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          officialLink.link!,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 8,
                            color: Kolors.greyBlue,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          height: 1,
                          child: Container(
                            color: Kolors.greyBlue,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomText(
              text: officialLink.name,
              fontWeight: FontWeight.w400,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              fontSize: 16,
            ),
          ],
        ),
      ),
    );
  }
}

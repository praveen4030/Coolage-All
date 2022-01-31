part of mini_services;

class ServiceCard extends StatelessWidget {
  final String name;
  final String image;
  const ServiceCard({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MiniServiceDetailsPage(service: name)));
      },
      child: Container(
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Kolors.greyBlue.withOpacity(0.5),
            ),
          ],
          // color: Colors.red,
        ),
        child: CachedNetworkImage(
          imageUrl: image,
          fit: BoxFit.cover,
          placeholder: (_, __) {
            return Container(
              color: Kolors.white,
              child: LogoLoading(),
            );
          },
        ),
      ),
    );
  }
}

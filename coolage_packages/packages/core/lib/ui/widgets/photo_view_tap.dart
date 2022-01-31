part of core;

class PhotoViewTap extends StatelessWidget {
  final Widget? child;
  final String? imageUrl;
  const PhotoViewTap({
    Key? key,
    @required this.child,
    @required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (imageUrl != null) {}
        Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
            builder: (context) => PhotoViewPage(
                  imageUrl: imageUrl,
                )));
      },
      child: child,
    );
  }
}

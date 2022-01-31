part of core;

class PhotoViewPage extends StatelessWidget {
  final String? imageUrl;
  final File? file;
  const PhotoViewPage({
    Key? key,
    @required this.imageUrl,
    this.file,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 56,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Container(
            alignment: Alignment.center,
            height: 300,
            child: InteractiveViewer(
              panEnabled: false, // Set it to false
              boundaryMargin: EdgeInsets.all(100),
              minScale: 0.1,
              maxScale: 5,
              child: SizedBox(
                child: Stack(
                  children: [
                    // ClipRRect(
                    //   clipBehavior: Clip.hardEdge,
                    //   child: ImageFiltered(
                    //     imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    //     child: Container(
                    //       alignment: Alignment.center,
                    //       decoration: BoxDecoration(
                    //         image: DecorationImage(
                    //           image: CachedNetworkImageProvider(
                    //             imageUrl!,
                    //             // cacheRefreshStrategy: CacheRefreshStrategy.NEVER,
                    //           ),
                    //           fit: BoxFit.cover,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: file != null
                              ? kIsWeb
                                  ? Image.network(
                                      file!.path,
                                      fit: BoxFit.fill,
                                    ).image
                                  : Image.file(
                                      file!,
                                      fit: BoxFit.fill,
                                    ).image
                              : CachedNetworkImageProvider(
                                  imageUrl!,
                                  // cacheRefreshStrategy: CacheRefreshStrategy.NEVER,
                                ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

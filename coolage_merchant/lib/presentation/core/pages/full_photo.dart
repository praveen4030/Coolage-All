import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class FullPhoto extends StatelessWidget {
  final String? url;

  const FullPhoto({@required this.url}) : assert(url != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        child: url != null
            ? PhotoView(
                imageProvider: NetworkImage(url!),
                // Contained = the smallest possible size to fit one dimension of the screen
                minScale: PhotoViewComputedScale.contained * 0.8,
                // Covered = the smallest possible size to fit the whole screen
                maxScale: PhotoViewComputedScale.covered * 2,
                enableRotation: true,
                // Set the background color to the "classic white"
                backgroundDecoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                ),
                // loadingChild: Center(
                //   child: CircularProgressIndicator(),
                // ),
              )
            : Container(),
      ),
    );
  }
}

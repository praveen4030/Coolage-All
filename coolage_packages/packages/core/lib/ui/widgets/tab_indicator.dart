part of core;

enum TabIndicatorSize {
  tiny,
  normal,
  full,
}

class TabIndicator extends Decoration {
  final double indicatorHeight;
  final Color indicatorColor;
  final TabIndicatorSize indicatorSize;

  const TabIndicator(
      {required this.indicatorHeight,
      required this.indicatorColor,
      required this.indicatorSize});

  @override
  _TabPainter createBoxPainter([VoidCallback? onChanged]) {
    return new _TabPainter(this, onChanged!);
  }
}

class _TabPainter extends BoxPainter {
  final TabIndicator decoration;

  _TabPainter(this.decoration, VoidCallback onChanged)
      : assert(decoration != null),
        super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);

    Rect rect;
    if (decoration.indicatorSize == TabIndicatorSize.full) {
      rect = Offset(offset.dx,
              (configuration.size!.height - decoration.indicatorHeight)) &
          Size(configuration.size?.width ?? 3, decoration.indicatorHeight);
    } else if (decoration.indicatorSize == TabIndicatorSize.normal) {
      rect = Offset(offset.dx + 10,
              (configuration.size!.height - decoration.indicatorHeight)) &
          Size(configuration.size!.width - 18, decoration.indicatorHeight);
    } else {
      rect = Offset(offset.dx + configuration.size!.width / 3,
              (configuration.size!.height - decoration.indicatorHeight)) &
          Size(configuration.size!.width / 3, decoration.indicatorHeight);
    }

    final Paint paint = Paint();
    paint.color = decoration.indicatorColor;
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
        RRect.fromRectAndCorners(rect,
            topRight: Radius.circular(8), topLeft: Radius.circular(8)),
        paint);
  }
}

import 'package:flutter/material.dart';

class DotIndicator extends Decoration {
  final double radius;
  final Color color;
  final double distanceFromCenter;
  final PaintingStyle paintingStyle;
  final double strokeWidth;
  DotIndicator({
    this.paintingStyle = PaintingStyle.fill,
    this.radius = 3,
    this.color = Colors.blue,
    this.distanceFromCenter = 8,
    this.strokeWidth = 2,
  });
  @override
  _CustomPainter createBoxPainter([VoidCallback? onChanged]) {
    return new _CustomPainter(
      this,
      onChanged,
      radius,
      color,
      paintingStyle,
      distanceFromCenter,
      strokeWidth,
    );
  }
}

class _CustomPainter extends BoxPainter {
  final DotIndicator decoration;
  final double radius;
  final Color color;
  final double distanceFromCenter;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  _CustomPainter(
    this.decoration,
    VoidCallback? onChanged,
    this.radius,
    this.color,
    this.paintingStyle,
    this.distanceFromCenter,
    this.strokeWidth,
  ) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);
    assert(strokeWidth >= 0 &&
        strokeWidth < configuration.size!.width / 2 &&
        strokeWidth < configuration.size!.height / 2);

    final Paint paint = Paint();
    double xAxisPos = offset.dx + configuration.size!.width / 2;
    double yAxisPos = offset.dy + configuration.size!.height / 2 + distanceFromCenter;
    paint.color = color;
    paint.style = paintingStyle;
    paint.strokeWidth = strokeWidth;
    canvas.drawCircle(Offset(xAxisPos, yAxisPos), radius, paint);
  }
}

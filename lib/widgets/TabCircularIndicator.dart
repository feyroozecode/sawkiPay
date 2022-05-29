// @dart=2.0

import 'package:flutter/material.dart';

class TabCircularIndicator extends Decoration {

  final BoxPainter _painter;
  TabCircularIndicator({@required Color color, @required double radius}): _painter = _CircularPainter(color, radius);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;

}

class _CircularPainter extends BoxPainter {
  final Paint _paint; 
  final double radius;

  _CircularPainter(Color color, this.radius)
    : _paint = Paint()
        ..color = color
        ..isAntiAlias = true;


   @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circularOffset = offset + Offset(cfg.size.width / 2, cfg.size.height - radius);

    canvas.drawCircle(circularOffset, radius, _paint);

  }      
}
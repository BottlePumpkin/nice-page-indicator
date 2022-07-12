import 'package:flutter/rendering.dart';

enum PageIndicatorLocation {
  topLeft(
      alignment: Alignment.topLeft, mainAxisAlignment: MainAxisAlignment.start),
  topCenter(
      alignment: Alignment.topCenter,
      mainAxisAlignment: MainAxisAlignment.center),
  topRight(
      alignment: Alignment.topRight, mainAxisAlignment: MainAxisAlignment.end),
  centerLeft(
      alignment: Alignment.centerLeft,
      mainAxisAlignment: MainAxisAlignment.start),
  center(
      alignment: Alignment.center, mainAxisAlignment: MainAxisAlignment.center),
  centerRight(
      alignment: Alignment.centerRight,
      mainAxisAlignment: MainAxisAlignment.end),
  bottomLeft(
      alignment: Alignment.bottomLeft,
      mainAxisAlignment: MainAxisAlignment.start),
  bottomCenter(
      alignment: Alignment.bottomCenter,
      mainAxisAlignment: MainAxisAlignment.center),
  bottomRight(
      alignment: Alignment.bottomRight,
      mainAxisAlignment: MainAxisAlignment.end);

  final AlignmentGeometry alignment;
  final MainAxisAlignment mainAxisAlignment;

  const PageIndicatorLocation(
      {required this.alignment, required this.mainAxisAlignment});
}


import 'package:flutter/material.dart';


class PageIndicatorStyle {
  final Color activeColor;
  final Color inActiveColor;
  final Duration animationDuration;
  final double activeSize;
  final double inActiveSize;
  final EdgeInsets margin;

  const PageIndicatorStyle(
      {this.activeColor = Colors.black,
        this.inActiveColor = Colors.white,
        this.animationDuration = const Duration(milliseconds: 100),
        this.activeSize = 8.0,
        this.inActiveSize = 6.0,
        this.margin = const EdgeInsets.only(right: 5)});
}
import 'package:flutter/material.dart';
import 'package:nice_page_indicator/src/page_indicator_item/page_indicator_style.dart';


class PageIndicatorItem extends StatelessWidget {
  const PageIndicatorItem(
      {Key? key,
      required this.currentIndex,
      required this.index,
      this.pageIndicatorStyle = const PageIndicatorStyle()})
      : super(key: key);

  final int index;
  final int currentIndex;
  final PageIndicatorStyle pageIndicatorStyle;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: pageIndicatorStyle.animationDuration,
      margin: pageIndicatorStyle.margin,
      child: CircleAvatar(
        radius: currentIndex == index
            ? pageIndicatorStyle.activeSize / 2
            : pageIndicatorStyle.inActiveSize / 2,
        backgroundColor: currentIndex == index
            ? pageIndicatorStyle.activeColor
            : pageIndicatorStyle.inActiveColor,
      ),
    );
  }
}

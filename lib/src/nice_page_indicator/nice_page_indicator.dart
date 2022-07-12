import 'package:flutter/material.dart';
import '../src.dart';

class NicePageIndicator extends StatefulWidget {
  const NicePageIndicator(
      {Key? key,
        required this.pageController,
        required this.contents,
        this.physics,
        this.pageIndicatorStyle,
        this.pageIndicatorLocation = PageIndicatorLocation.topRight,
        this.pageIndicatorPadding = const EdgeInsets.symmetric(horizontal: 16)})
      : super(key: key);

  final PageController pageController;
  final PageIndicatorStyle? pageIndicatorStyle;
  final PageIndicatorLocation pageIndicatorLocation;
  final EdgeInsets pageIndicatorPadding;
  final ScrollPhysics? physics;
  final List<Widget> contents;

  @override
  State<NicePageIndicator> createState() => _NicePageIndicatorState();
}

class _NicePageIndicatorState extends State<NicePageIndicator> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Align(
              alignment: Alignment.center,
              child: PageView.builder(
                physics: widget.physics,
                controller: widget.pageController,
                itemCount: widget.contents.length,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return widget.contents[index];
                },
              ),
            ),
            Align(
              alignment: widget.pageIndicatorLocation.alignment,
              child: Padding(
                padding: widget.pageIndicatorPadding,
                child: Row(
                  mainAxisAlignment:
                  widget.pageIndicatorLocation.mainAxisAlignment,
                  children: List.generate(
                    widget.contents.length,
                        (index) {
                      if (widget.pageIndicatorStyle == null) {
                        return PageIndicatorItem(
                          currentIndex: currentIndex,
                          index: index,
                        );
                      } else {
                        return PageIndicatorItem(
                          currentIndex: currentIndex,
                          index: index,
                          pageIndicatorStyle: widget.pageIndicatorStyle!,
                        );
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

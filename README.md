# nice_page_indicator

**I want to be a nice package**

**You can easily implement Animation Page indicator.**


https://user-images.githubusercontent.com/61003485/178436364-7bc2067e-e791-489b-9262-36056a45be1d.gif

## Usage

### Install

```
dependencies:
  nice_page_indicator: ^0.0.3
```

### How To Use

- **changed Indicator style**
    - size [active,inactive]
    - color [active,inactive]
    - animation duration

▶️ If You want to PageIndicator Style, Chagned **PageIndicatorStyle Class** Argument.

- **indicator location**
    - topLeft,topCenter,topRight,centerLeft,center,centerRight,bottomLeft,bottomCetner,bottomRight

▶️ If You want to PageIndicator Location, set **pageIndicatorLocation Type**.

```
NicePageIndicator(
  pageController: pageController,
  physics:constScrollPhysics(),
  pageWidgets: contents,
  pageIndicatorStyle:const PageIndicatorStyle(activeColor: Colors.cyan),
  pageIndicatorLocation: PageIndicatorLocation.topRight,
  pageIndicatorPadding:constEdgeInsets.all(16),
);
```

- with Column

This package consists of a stack and a column, and you can add components by accessing **pageUpperWidgets** & **pageLowerWidgets**.



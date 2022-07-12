import 'package:flutter/material.dart';
import 'package:nice_page_indicator/nice_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'nice-page-indicator',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController pageController = PageController();

  List<Widget> contents = [
    const Page(
      color: Colors.red,
    ),
    const Page(
      color: Colors.yellow,
    ),
    const Page(
      color: Colors.green,
    ),
    const Page(
      color: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return NicePageIndicator(
      pageController: pageController,
      physics: const ScrollPhysics(),
      pageWidgets: contents,
      pageIndicatorStyle: const PageIndicatorStyle(
        activeColor: Colors.cyan,
      ),
      pageIndicatorLocation: PageIndicatorLocation.topRight,
      pageIndicatorPadding: const EdgeInsets.all(16),
    );
  }
}

class Page extends StatelessWidget {
  const Page({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}

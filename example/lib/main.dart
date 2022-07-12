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
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
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
      contents: contents,
      pageIndicatorStyle: const PageIndicatorStyle(activeColor: Colors.cyan),
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

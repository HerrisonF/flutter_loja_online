import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _pagecontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pagecontroller,
      children: [
        Container(
          color: Colors.yellow,
        ),
        Container(
          color: Colors.amber,
        )
      ],
    );
  }
}

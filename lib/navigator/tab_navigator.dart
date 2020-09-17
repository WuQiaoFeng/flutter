import 'package:flutter/material.dart';
import 'package:qiaofengnew/main.dart';
import 'package:qiaofengnew/pages/home_page.dart';
import 'package:qiaofengnew/pages/search_page.dart';
import 'package:qiaofengnew/pages/travel_page.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          SearchPage(),
          TravelPage(),
          MyApp(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items:
      [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: _defaultColor,
          ),
          activeIcon: Icon(
            Icons.home,
            color: _activeColor,
          ),
        )
      ]
      ),
    );
  }
}

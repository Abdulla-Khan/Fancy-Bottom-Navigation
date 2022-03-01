import 'package:fancy_bottom_bar/navigator.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    List<TabData> tabs = [
      TabData(iconData: Icons.home, title: 'Home'),
      TabData(iconData: Icons.account_balance, title: 'Account'),
      TabData(iconData: Icons.search, title: 'Search'),
      TabData(iconData: Icons.person, title: 'Profile'),
    ];

    return Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Center(
            child: getWidget(index: current),
          ),
        ),
        bottomNavigationBar: FancyBottomNavigation(
            inactiveIconColor: Colors.blueGrey,
            activeIconColor: const Color.fromARGB(255, 19, 158, 228),
            circleColor: Colors.blueGrey[50],
            tabs: tabs,
            onTabChangedListener: (pos) {
              setState(() {
                current = pos;
              });
            }));
  }

  Widget getWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = NavigatorPage(
          title: 'Home Page',
        );
        break;
      case 1:
        widget = NavigatorPage(
          title: 'Account Page',
        );
        break;
      case 2:
        widget = NavigatorPage(
          title: 'Search Page',
        );
        break;
      case 3:
        widget = NavigatorPage(
          title: 'Profile Page',
        );
        break;

      default:
        widget = NavigatorPage(
          title: 'General Page',
        );
        break;
    }
    return widget;
  }
}

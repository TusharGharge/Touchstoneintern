import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                "asset/bulb.svg",
              ),
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                "asset/bottomhome.svg",
              ),
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                "asset/bott",
              ),
            ),
            title: Text('Home'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

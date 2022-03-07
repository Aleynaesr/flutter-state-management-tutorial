import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_usage/utils/constants.dart';
import 'package:getx_usage/views/history.dart';

import 'graph.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentTab =0;
  Widget _currentScreen = HistoryScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentScreen,
      floatingActionButton: const FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null,
        backgroundColor: primary,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          height: MediaQuery.of(context).size.height/12,
          iconSize: 30,
          backgroundColor: primary,
          activeColor: Colors.white,
          inactiveColor: Colors.white70,
          gapLocation: GapLocation.center,
          icons: const [Icons.history, Icons.show_chart ],
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          activeIndex: _currentTab, onTap: (int){
        setState(() {
          _currentTab = int;
          _currentScreen = (int == 0)?const HistoryScreen() : GraphScreen();
        });


      }),
    );
  }
}

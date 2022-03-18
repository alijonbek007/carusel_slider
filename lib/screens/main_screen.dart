import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:cars_app/constants/colors.dart';
import 'package:cars_app/screens/home_page.dart';
import 'package:cars_app/screens/profil_page.dart';
import 'package:cars_app/screens/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: main_color,
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children:const <Widget>[
            HomePage(),
            SearchPage(),
            ProfilPage(),
          ],
          
        ),
      ),
      bottomNavigationBar: Container(
        // height: MediaQuery.of(context).size.height * 0.09,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: BottomNavyBar(
          
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          selectedIndex: _currentIndex,
          backgroundColor: Colors.transparent,
          showElevation: false,
          containerHeight: 70,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController!.jumpToPage(index);
          },
          
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              
              activeColor: Colors.redAccent,
              inactiveColor: inActiveBottomColor,
              title: const Text('Home'),
              icon: const Icon(CupertinoIcons.settings)
            ),
            BottomNavyBarItem(
              activeColor: Colors.redAccent,
              inactiveColor: inActiveBottomColor,
              title: const Text('Search'),
              icon: const Icon(Icons.search)
            ),
            BottomNavyBarItem(
              activeColor: Colors.redAccent,
              inactiveColor: inActiveBottomColor,
              title: const Text('Profil'),
              icon: const Icon(Icons.account_circle_outlined)
            ),
            
          ],
        ),
      ),
    );
  }
}
import 'package:exam/tabs/home_tab.dart';
import 'package:exam/tabs/library_tab.dart';
import 'package:exam/tabs/search_tab.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const String routeName = '/';

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:  Column(children: [
       Expanded(child: tabs[selectedIndex]),
     ],),


      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: const Color(0xff4838D1),
        unselectedItemColor: const Color(0xff6A6A8B),
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/home.png'),size: 40,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/search.png'),size: 40
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/document.png'),size: 40
            ),
            label: 'Library',
          )
        ],
      ),
    );
  }

  List<Widget> tabs=[
    const HomeTab(),
    const SearchTab(),
    const LibraryTab(),
  ];
}

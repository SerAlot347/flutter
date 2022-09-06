// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_3/graph.dart';
import 'package:flutter_application_3/mainbalancepage.dart';

enum UserType { admin, staf, guest }

class Homepage extends StatefulWidget {
  final String? name;

  const Homepage({super.key, this.name});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentindex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'welcome ${widget.name} ',
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ]),
      //Bottom bar
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              size: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.payment_outlined,
              size: 20,
            ),
            label: 'payment',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.graphic_eq_sharp,
              size: 20,
            ),
            label: 'payment',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet,
              size: 20,
            ),
            label: 'wallet',
          ),
        ],
        onTap: _onItemTapped,
        selectedItemColor: Colors.grey,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentindex = index;
      _pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }
}

// ignore: camel_case_types
class page extends StatelessWidget {
  const page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: const [
          graph(),
          mainbalance(),
          Homepage(),
        ],
      ),
    );
  }
}

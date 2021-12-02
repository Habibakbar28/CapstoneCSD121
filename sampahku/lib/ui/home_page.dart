
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sampahku/ui/first_page.dart';
import 'account_page.dart';
import 'news_list_page.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex = 0;

  List pages = [
    FirstPage(),
    NewsListPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[_bottomNavIndex],
        bottomNavigationBar: ConvexAppBar(
            style: TabStyle.reactCircle,
            gradient: LinearGradient(
              colors: [
                Colors.green.withOpacity(0.8),
                Colors.greenAccent.withOpacity(0.9)
              ],
                begin: Alignment.topLeft,
                end: Alignment.centerRight
            ),
            backgroundColor: Colors.green,
            items: [
              TabItem(icon: Icons.home,),
              TabItem(icon: Icons.public_rounded),
              TabItem(icon: Icons.account_circle),
            ],
            initialActiveIndex: 0,
            color: Colors.white,//optional, default as 0
            onTap: (int i) {
              setState(() {
                _bottomNavIndex = i;
              });
            })
    );
  }
}
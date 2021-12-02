import 'package:flutter/material.dart';

import 'ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sampahku',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage()
      },
    );
  }

}

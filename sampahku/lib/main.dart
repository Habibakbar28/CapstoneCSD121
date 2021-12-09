import 'package:flutter/material.dart';
import 'package:sampahku/ui/starter_page.dart';

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
      initialRoute: StarterPage.routeName,
      routes: {
        StarterPage.routeName: (context) => StarterPage()
      },
    );
  }

}

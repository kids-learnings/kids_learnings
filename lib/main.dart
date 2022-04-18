import 'package:flutter/material.dart';
import './home_page_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kids Learnings',
        theme: ThemeData(
          // This is the theme of application.
          primarySwatch: Colors.orange,
        ),
        home:
            HomePageScreen() //const MyHomePage(title: 'Welcome to Kids Learnings'),
        );
  }
}

import 'package:flutter/material.dart';

class FirstPageScreen extends StatefulWidget {
  const FirstPageScreen({Key? key}) : super(key: key);

  @override
  _FirstPageScreenState createState() => _FirstPageScreenState();
}

class _FirstPageScreenState extends State<FirstPageScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: Colors.white70,
          leading: const Icon(Icons.menu),
          title: const Text('Kids Learnings', style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'KGRedHands',
            color: Colors.orange,
          )),
        ),
        );
  }
}

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import './first_page_screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Kids Learnings'),
          automaticallyImplyLeading: false,
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 300.0,
                    width: 350.0,
                    child: Center(
                      child: _typeWriter(),
                    ),
                  ),
                ],
              )),
        ));
  }

  Widget _typeWriter() {
    return SizedBox(
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 30.0,
          
          color: Colors.orangeAccent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: AnimatedTextKit(
              repeatForever: false,
              isRepeatingAnimation: false,
              animatedTexts: [
                TypewriterAnimatedText(
                  'Kids Learnings',
                  textStyle: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'KGRedHands',
                  ),
                  speed: const Duration(milliseconds: 200),
                ),
              ],
              onFinished: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FirstPageScreen()),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

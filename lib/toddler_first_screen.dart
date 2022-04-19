import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import './alphabets/alphabets_a_screen.dart';

class ToddlerFirstScreen extends StatefulWidget {
  const ToddlerFirstScreen({Key? key}) : super(key: key);

  @override
  _ToddlerFirstScreenState createState() => _ToddlerFirstScreenState();
}

class _ToddlerFirstScreenState extends State<ToddlerFirstScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      fixedSize: const Size(250, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      primary: Colors.white70,
                      onPrimary: Colors.orangeAccent,// Background color
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AlphabetsAScreen()),
                      );
                    },
                    child: Text('Alphabets'),
                  ),
                  SizedBox(height: 8.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      fixedSize: const Size(250, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      primary: Colors.white70,
                      onPrimary: Colors.orangeAccent,// Background color
                    ),
                    onPressed: () {
                      // Respond to button press
                    },
                    child: Text("Numbers"),
                  ),
                  SizedBox(height: 8.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      fixedSize: const Size(250, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      primary: Colors.white70,
                      onPrimary: Colors.orangeAccent,// Background color
                    ),
                    onPressed: () {
                      // Respond to button press
                    },
                    child: Text("Colors"),
                  ),
                  SizedBox(height: 8.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      fixedSize: const Size(250, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      primary: Colors.white70,
                      onPrimary: Colors.orangeAccent,// Background color
                    ),
                    onPressed: () {
                      // Respond to button press
                    },
                    child: Text("Shapes"),
                  ),
                ],
              )),
        ),
    );
  }

  Widget _aForApple() {
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
              animatedTexts: [
                WavyAnimatedText('Apple'),
                WavyAnimatedText('Ant'),
                WavyAnimatedText('Airplane'),
                WavyAnimatedText('Alligator'),
              ],
              isRepeatingAnimation: false,
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _textLiquidFill() {
    return SizedBox(
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 30.0,
          
          color: Colors.orangeAccent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: TextLiquidFill(
              text: 'A a',
              waveDuration: Duration(seconds: 5),
              waveColor: Colors.orangeAccent,
              boxBackgroundColor: Colors.white,
              textStyle: TextStyle(
                fontSize: 175.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

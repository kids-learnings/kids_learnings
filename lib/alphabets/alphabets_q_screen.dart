import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_tts/flutter_tts.dart';
import './alphabets_p_screen.dart';
import './alphabets_r_screen.dart';

class AlphabetsQScreen extends StatefulWidget {
  const AlphabetsQScreen({Key? key}) : super(key: key);

  @override
  _AlphabetsQScreenState createState() => _AlphabetsQScreenState();
}

enum TtsState { playing, stopped, paused, continued }

class _AlphabetsQScreenState extends State<AlphabetsQScreen> {
  String get word_1 => "Queen";

  String get word_2 => "Quail";

  String get word_3 => "Question";

  String get word_4 => "Quiet";

  String get letterWord => "Q q";

  //text to speech
  late FlutterTts _flutterTts;

  @override
  void initState() {
    super.initState();
    initializeTts();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _flutterTts.speak("Letter Q");
    });
  }

  @override
  void dispose() {
    super.dispose();
    _flutterTts.stop();
  }

  void initializeTts() {
    _flutterTts = FlutterTts();
    _flutterTts.setSpeechRate(0.5);
    _flutterTts.getDefaultEngine;
  }

  Future _speak(String text) async {
    await _flutterTts.speak("Q for " +text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      bottomNavigationBar: Container(
        height: 40,
        margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.grey,
                  child: TextButton.icon(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(250, 40),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    autofocus: true,
                    label: const Text("Back", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    icon: const Icon(
                      Icons.navigate_before,
                      size: 24.0,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AlphabetsPScreen()),
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.orangeAccent,
                  child: TextButton.icon(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(250, 40),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    autofocus: true,
                    label: const Text("Next", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    icon: const Icon(
                      Icons.navigate_next,
                      size: 24.0,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AlphabetsRScreen()),
                      );
                    },
                  ),
                ),
              ),
            ],
        ),

      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 240.0,
                width: 350.0,
                /*decoration:
                    BoxDecoration(border: Border.all(color: Colors.blueAccent)),*/
                child: Center(
                  child: _textLiquidFill(),
                ),
              ),
              Container(
                height: 90.0,
                width: 350.0,
                /*decoration:
                    BoxDecoration(border: Border.all(color: Colors.blueAccent)),*/
                child: Center(
                  child: _aForApple1(),
                ),
              ),
              Container(
                height: 80.0,
                width: 350.0,
                /*decoration:
                  BoxDecoration(border: Border.all(color: Colors.blueAccent)),*/
                child: Center(
                  child: _aForApple2(),
                ),
              ),
              Container(
                height: 80.0,
                width: 350.0,
                /*decoration:
                  BoxDecoration(border: Border.all(color: Colors.blueAccent)),*/
                child: Center(
                  child: _aForApple3(),
                ),
              ),
              Container(
                height: 80.0,
                width: 350.0,
                /*decoration:
                  BoxDecoration(border: Border.all(color: Colors.blueAccent)),*/
                child: Center(
                  child: _aForApple4(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _aForApple1() {
    return SizedBox(
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 30.0,

          color: Colors.deepOrange,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(word_1),
              ],
              isRepeatingAnimation: false,
              /*onNext: (int index, bool isLast) {
                if (index == 0) {
                  _speak(word_1);
                }
              },*/
              onTap: (){
                _speak(word_1);
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _aForApple2() {
    return SizedBox(
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 30.0,

          color: Colors.blue,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(word_2),
              ],
              isRepeatingAnimation: false,
              /*onNext: (int index, bool isLast) {
                if (index == 0) {
                  _speak(word_2);
                }
              },*/
              onTap: (){
                _speak(word_2);
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _aForApple3() {
    return SizedBox(
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 30.0,

          color: Colors.pinkAccent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(word_3),
              ],
              isRepeatingAnimation: false,
              /*onNext: (int index, bool isLast) {
                if (index == 0) {
                  _speak(word_3);
                }
              },*/
              onTap: (){
                _speak(word_3);
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _aForApple4() {
    return SizedBox(
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 30.0,

          color: Colors.brown,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(word_4),
              ],
              isRepeatingAnimation: false,
              /*onNext: (int index, bool isLast) {
                if (index == 0) {
                  _speak(word_4);
                }
              },*/
              onTap: (){
                _speak(word_4);
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
              text: letterWord,
              waveDuration: const Duration(seconds: 5),
              waveColor: Colors.orangeAccent,
              boxBackgroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 165.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

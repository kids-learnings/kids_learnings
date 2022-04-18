import 'package:flutter/material.dart';
import './toddler_first_screen.dart';

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
            color: Colors.orangeAccent,
          )),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                    MaterialPageRoute(builder: (context) => ToddlerFirstScreen()),
                  );
                },
                child: Text('Toddler'),
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
                child: Text("Child"),
              ),
            ],
          ),
        ),
    );
  }
}

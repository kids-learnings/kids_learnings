import 'package:flutter/material.dart';
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
                        MaterialPageRoute(builder: (context) => const AlphabetsAScreen()),
                      );
                    },
                    child: const Text('Alphabets'),
                  ),
                  const SizedBox(height: 8.0),
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
                    child: const Text("Numbers"),
                  ),
                  const SizedBox(height: 8.0),
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
                    child: const Text("Colors"),
                  ),
                  const SizedBox(height: 8.0),
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
}

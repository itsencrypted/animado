import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ColorfulText extends StatefulWidget {
  static const String id = '/text_animations/colorful';

  @override
  _ColorfulTextState createState() => _ColorfulTextState();
}

class _ColorfulTextState extends State<ColorfulText> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          width: 250.0,
          child: ColorizeAnimatedTextKit(
              onTap: () {
                print("Tap Event");
              },
              text: [
                "Muito bom",
                "Você está indo bem!",
                "Te espero amanhã!",
              ],
              textStyle: TextStyle(
                fontSize: 40.0,
                fontFamily: "Horizon",
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
              colors: [
                Colors.purple,
                Colors.blue,
                Colors.yellow,
                Colors.red,
              ],
              textAlign: TextAlign.start,
          ),
        ),
      ),
    );
  }
}



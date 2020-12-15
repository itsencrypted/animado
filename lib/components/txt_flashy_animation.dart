import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class FlashyText extends StatefulWidget {
  static const String id = '/text_animations/flashy';

  @override
  _FlashyTextState createState() => _FlashyTextState();
}

class _FlashyTextState extends State<FlashyText> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          width: 400.0,
          child: ScaleAnimatedTextKit(
            onTap: () {
              print("Tap Event");
            },
            text: ["Tamo Junto", "Vambora", "Nao para agora!!"],
            textStyle: GoogleFonts.germaniaOne(
              textStyle: TextStyle(
                  color: Colors.amber,
                  letterSpacing: .5,
                  fontSize: 70,
                  fontWeight: FontWeight.w400),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}


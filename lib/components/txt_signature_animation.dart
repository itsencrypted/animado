import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class SignatureText extends StatefulWidget {
  static const String id = '/text_animations/signature';

  @override
  _SignatureTextState createState() => _SignatureTextState();
}

class _SignatureTextState extends State<SignatureText> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: SizedBox(
          width: 250.0,
          child: TyperAnimatedTextKit(
            onTap: () {
              print("Tap Event");
            },
            text: [
              "Quero Ânimo!",],
            textStyle: GoogleFonts.homemadeApple(
              textStyle: TextStyle(
                fontSize: 30.0,
                color: Colors.red,
              ),
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ),
    );
  }
}
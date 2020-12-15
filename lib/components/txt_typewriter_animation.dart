import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class TypewriterText extends StatefulWidget {
  static const String id = '/text_animations/typewriter';

  @override
  _TypewriterTextState createState() => _TypewriterTextState();
}

class _TypewriterTextState extends State<TypewriterText> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: SizedBox(
          width: 400.0,
          child: TypewriterAnimatedTextKit(
            onTap: () {
              print("Tap Event");
            },
            text: [
              "O sucesso dos seu resultado, depende só de"
                  " você",
              "Faz tempo que você não treina com a gente!",
              "Não vai desistir logo agora.",
            ],
            textStyle: GoogleFonts.courierPrime(
              textStyle: TextStyle(
                  color: Colors.white,
                  letterSpacing: .5,
                  fontSize: 30,
                  fontWeight: FontWeight.w400),
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ),
    );
  }
}


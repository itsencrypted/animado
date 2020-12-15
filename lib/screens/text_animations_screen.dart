import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class TextAnimationsScreen extends StatefulWidget {
  static const String id = '/text_animations';

  @override
  _TextAnimationsScreenState createState() => _TextAnimationsScreenState();
}

class _TextAnimationsScreenState extends State<TextAnimationsScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;


  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 8),
      vsync: this,
    );
    animation =
        ColorTween(begin: Colors.white, end: Colors.black).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Center(
                child: SafeArea(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ListView(
                            children: <Widget>[
                              Card(
                                child: ListTile(
                                  leading: Icon(Icons.people_rounded),
                                  title: Text('Text Animation example'),
                                  subtitle: Text('1'),
                                  onTap: ()=> textanimations['flashy'],
                                  trailing: Icon(Icons.android_sharp),
                                ),
                              ),
                              Card(
                                child: ListTile(
                                  leading: Icon(Icons.people_rounded),
                                  title: Text('Text Animation example'),
                                  subtitle: Text('2'),
                                  onTap: ()=> textanimations['signature'],
                                  trailing: Icon(Icons.android_sharp),
                                ),
                              ),
                              Card(
                                child: ListTile(
                                  leading: Icon(Icons.people_rounded),
                                  title: Text('Text Animation example'),
                                  subtitle: Text('3'),
                                  onTap: ()=> textanimations['typewriter'],
                                  trailing: Icon(Icons.android_sharp),
                                ),
                              ),
                            ],
                          )
                        ]
                    )
                )
            )
        )
    );
  }
}

//textanimations['flashy']
//textanimations['signature']
//textanimations['typewriter']
final Map<String, Widget> textanimations = {
  'flashy': SizedBox(
    width: 400.0,
    child: ScaleAnimatedTextKit(
      onTap: () {
        print("Tap Event");
      },
      text: ["Tamo", "Junto", "Bora!!"],
      textStyle: GoogleFonts.germaniaOne(
        textStyle: TextStyle(
            color: Colors.amber,
            letterSpacing: .5,
            fontSize: 70,
            fontWeight: FontWeight.w400),
      ),
      textAlign: TextAlign.start,
    ),
  ),
  'signature': SizedBox(
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
  'typewriter': SizedBox(
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
};



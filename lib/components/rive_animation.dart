import 'package:flutter/material.dart';

class RiveAnimation {

  final String riveFile;
  final Alignment alignment;
  final String navTitle;
  final Color navColor;
  final Color tileColor;
  final Color backgroundColor;

  RiveAnimation({
    @required this.riveFile,
    this.alignment = Alignment.center,
    this.navTitle = 'MyApp',
    this.navColor = Colors.grey,
    this.tileColor = Colors.grey,
    this.backgroundColor = Colors.white
  });
}
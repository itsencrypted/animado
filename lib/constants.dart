import 'package:animado/components/rive_animation.dart';
import 'package:flutter/material.dart';


const kDharma1 = Color(0xFF2536FF);
const kDharma2 = Color(0xFFA323FE);
const kDharma3 = Color(0xFFFF1FCF);
const kDharma4 = Color(0xFFFE763E);
const kDharma5 = Color(0xFFFFA514);
const kLightBlueish = Color(0xFF33BBB5);
const kLightGreen = Color(0xFF95E08E);

final Map<String, RiveAnimation> riveanimations = {
  'space': RiveAnimation(
      riveFile: 'space_reload',
      alignment: Alignment.center,
      navTitle: 'StarTrack',
      navColor: Color(0xFF342472),
      backgroundColor: Color(0xFF342472),
      tileColor: Color(0xFF4A3F8A)
  ),
  'rocket': RiveAnimation(
      riveFile: 'rocket_reload',
      alignment: Alignment.bottomCenter,
      navTitle: 'LyftOff',
      navColor: Color(0xFF282828),
      backgroundColor: Color(0xFF333333),
      tileColor: Color(0xFF282828)
  ),
  'tape': RiveAnimation(
      riveFile: 'tape_reload',
      alignment: Alignment.center,
      navTitle: 'DubTapes',
      navColor: Color(0xFF040404),
      backgroundColor: Color(0xFF040404),
      tileColor: Color(0xFF201F22)
  ),
  'zombie': RiveAnimation(
      riveFile: 'zombie',
      alignment: Alignment.center,
      navTitle: 'ZombieRun',
      navColor: Color(0xFF342472),
      backgroundColor: Color(0xFF342472),
      tileColor: Color(0xFF4A3F8A)
  ),
};
import 'package:animado/components/txt_colorful_animation.dart';
import 'package:animado/components/txt_flashy_animation.dart';
import 'package:animado/components/txt_liquid_animation.dart';
import 'package:animado/components/txt_signature_animation.dart';
import 'package:animado/components/txt_typewriter_animation.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(''),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/minimalist10.jpg'),
                  fit: BoxFit.cover,
                )
            ),
          ),

          Column(
              children: text_animations.map((e) {
                return ListTile(
                  title: Text(e['title'], style:
                  kTextStyle,),
                  onTap: () {Navigator.pushReplacementNamed(context, e['route']);},
                );
              }).toList()
          ),
        ],
      ),
    );
  }
}

class MenuRow extends StatefulWidget {

  @override
  _MenuRowState createState() => _MenuRowState();
}

class _MenuRowState extends State<MenuRow> {
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: text_animations.map((e) {
          return Container(
            width: 120,
            child: MaterialButton(
              child: Text(e['title'], style:
              kTextStyle,), onPressed: ()
            {Navigator.pushReplacementNamed(context, e['route']);},
              padding: EdgeInsets.all(8),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),),
            ),
          );
        }).toList(),
      ),
    );
  }
}

var text_animations = [ {
  'title' : 'colorful',
  'route' : ColorfulText.id,
},
  {
    'title' : 'liquid',
    'route' : LiquidText.id,
  },
  {
    'title' : 'flashy',
    'route' : FlashyText.id,
  },
  {
    'title' : 'signature',
    'route' : SignatureText.id,
  },
  {
    'title' : 'typewriter',
    'route' : TypewriterText.id,
  },
];
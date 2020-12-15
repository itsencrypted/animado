import 'package:animado/components/drawer.dart';
import 'package:flutter/material.dart';

class Menu1Screen extends StatelessWidget {
  static const String id = '/menu1';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.black),
      ),
      drawer: MyDrawer(),
      backgroundColor: Colors.blueGrey,
    );
  }
}

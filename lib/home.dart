import 'package:flutter/material.dart';

import 'package:swiping_app/card/index.dart';
import 'package:swiping_app/util/iconButton.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Icon(Icons.ac_unit, color: Colors.black.withOpacity(.3), size: 32),
        centerTitle: true,
      ),
      body: CardDemo(),
    );
  }
}
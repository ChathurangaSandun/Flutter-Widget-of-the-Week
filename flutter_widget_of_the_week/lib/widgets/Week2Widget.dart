import 'package:flutter/material.dart';

class Week2Widget extends StatelessWidget {
  static const routeName = "weektwo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: SafeArea(
          //bottom: false,
          minimum: EdgeInsets.all(20),
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}

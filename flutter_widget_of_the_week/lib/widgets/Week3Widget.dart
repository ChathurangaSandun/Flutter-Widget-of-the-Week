import 'package:flutter/material.dart';

class Week3Widget extends StatelessWidget {
  static const routeName = "weekthree";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Column(
          children: <Widget>[
            Container(
              height: 80,
              color: Colors.red,
            ),
            Expanded(
              child: Container(
                color: Colors.amber,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Text(
                        "aaaaaaaaaaaaaaa",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Text(
                          "bbbbbbbbbbbbbbbbbbbbbbbbbbbb",
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

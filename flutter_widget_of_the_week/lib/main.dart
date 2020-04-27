import 'package:flutter/material.dart';
import 'package:flutterwidgetoftheweek/widgets/Week1Widget.dart';
import 'package:flutterwidgetoftheweek/widgets/Week2Widget.dart';
import 'package:flutterwidgetoftheweek/widgets/Week3Widget.dart';

void main() => runApp(MyApp());

class Routes{
  static const String Week1 = Week1Widget.routeName;
  static const String Week2 = Week2Widget.routeName;
  static const String Week3 = Week3Widget.routeName;
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: "Home page",
      ),
      routes:  {
        Routes.Week1: (context) => Week1Widget(),

      },
    );
  }
}



class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Welcome'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Week1Widget()));
              },
            ),
            ListTile(
              title: Text('Week 2 - Safe Area'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Week2Widget()));
              },
            ),
            ListTile(
              title: Text('Week 3 - Expand'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Week3Widget()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:broccoli/widget/bottom_bar.dart';

void main() {
  runApp(AndrewApp());
}

class AndrewApp extends StatefulWidget {
  _AndrewAppState createState() => _AndrewAppState();
}

class _AndrewAppState extends State<AndrewApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'andrew film',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          accentColor: Colors.white),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              Container(),
              Container(),
              Container(),
              Container(),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}

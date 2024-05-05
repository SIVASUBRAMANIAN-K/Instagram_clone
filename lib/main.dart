import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'LogIn_Screen.dart';

void main() => runApp(
      InstagramUI(),
    );

class InstagramUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram UI",
      theme: ThemeData.light(),
      home: LogInPage(),
    );
  }
}

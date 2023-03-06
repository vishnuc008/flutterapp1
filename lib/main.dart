import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp1/homescreen.dart';

void main(List<String> args) {
  runApp(myapp());
}
class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    home: homescreen(),
   );
  }
}
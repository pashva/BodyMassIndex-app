import 'package:flutter/material.dart';
import 'Inputpage.dart';
import 'Reusablecard.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Inputpage(),
          theme: ThemeData.dark(),


    );
  }
}

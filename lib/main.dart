import 'package:animation/Transform/tarnsform_one.dart';
import 'package:animation/Transition/page1.dart';
import 'package:animation/animation_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     home: AnimationContainer(),
    );
  }
}
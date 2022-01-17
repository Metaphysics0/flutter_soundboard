import 'package:flutter/material.dart';
import 'package:ollie_soundboard/home/home.dart';
import 'package:ollie_soundboard/routes.dart';
import 'package:ollie_soundboard/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      routes: appRoutes,
    );
  }
}

class SoundEffect extends StatefulWidget {
  const SoundEffect({Key? key}) : super(key: key);

  @override
  SoundEffectState createState() => SoundEffectState();
}

class SoundEffectState extends State<SoundEffect> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

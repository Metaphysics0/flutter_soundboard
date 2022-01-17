import 'package:flutter/material.dart';
import 'package:ollie_soundboard/main/app_bar.dart';
import 'package:ollie_soundboard/main/bottom_nav_bar.dart';
import 'package:ollie_soundboard/shared/soundButton.dart';

class HomePage extends StatelessWidget {
  void _pushSaved() {
    print("ahh");
  }

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        child: MainAppBar(),
        preferredSize: Size.fromHeight(50),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(bottom: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset(
                    'assets/ollie.jpg',
                    width: 110.0,
                    height: 110.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SoundButton(
                    text: "Bark",
                    icon: Icons.audiotrack,
                    color: Colors.green,
                    triggerSound: () => print("ahh"),
                  ),
                  SoundButton(
                    text: "Whistle",
                    icon: Icons.audiotrack,
                    color: Colors.red,
                    triggerSound: () => print("ahh"),
                  ),
                  SoundButton(
                    text: "Scream",
                    icon: Icons.audiotrack,
                    color: Colors.blue,
                    triggerSound: () => print("ahh"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

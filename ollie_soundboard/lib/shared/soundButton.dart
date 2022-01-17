import 'package:flutter/material.dart';

class SoundButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;
  final Function triggerSound;

  const SoundButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
    required this.triggerSound,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton.icon(
        icon: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
        style: TextButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          padding: const EdgeInsets.all(15),
          backgroundColor: color,
        ),
        onPressed: () => triggerSound(),
        label: Text(text),
      ),
    );
  }
}

import 'package:ollie_soundboard/about/about.dart';
import 'package:ollie_soundboard/home/home.dart';
import 'package:ollie_soundboard/settings/settings.dart';

var appRoutes = {
  "/": (context) => const HomePage(),
  "/home": (context) => const AboutPage(),
  "/settings": (context) => const SettingsPage(),
};

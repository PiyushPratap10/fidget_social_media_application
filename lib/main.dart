// import 'package:fidget_application/screens/login_screen.dart';
import 'package:fidget_application/screens/feed_screen.dart';
import 'package:fidget_application/screens/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

var lightScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 210, 210, 210));
var darkScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark, seedColor: const Color.fromARGB(255, 0, 0, 0));

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: darkScheme,
        scaffoldBackgroundColor: darkScheme.background),
    theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: lightScheme,
        scaffoldBackgroundColor: lightScheme.background),
    debugShowCheckedModeBanner: false,
    home: const FeedScreen(),
  ));
}

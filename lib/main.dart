import 'package:flutter/material.dart';
import 'package:hello_balemuya/welcome_page.dart';
import 'package:hello_balemuya/screens/home_screen.dart'; // Import the home page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _showWelcomePage = true;

  @override
  void initState() {
    super.initState();

    // Delayed navigation to the home page
    Future.delayed(const Duration(seconds: 10), () {
      setState(() {
        _showWelcomePage = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: _showWelcomePage ? const WelcomePage() : const HomeScreen(),
    );
  }
}

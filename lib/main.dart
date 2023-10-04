import 'package:flutter/material.dart';
import 'package:task1/screens/home_screen.dart';
import 'package:task1/screens/login_screen.dart';
import 'package:task1/screens/myaccount_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const LoginScreen(),
    );
  }
}
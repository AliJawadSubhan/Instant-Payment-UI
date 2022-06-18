import 'package:assignment_ui/components/dashboard.dart';
import 'package:assignment_ui/screens/login.dart';
import 'package:assignment_ui/screens/profile.dart';
import 'package:flutter/material.dart';
import 'screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // materialApp property is needed in order to call material widgets!
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:one/home/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
       theme: ThemeData(
        primaryColor: Color.fromRGBO(63, 72, 204, 1)
      ),
       debugShowCheckedModeBanner: false,
    );
  }
}


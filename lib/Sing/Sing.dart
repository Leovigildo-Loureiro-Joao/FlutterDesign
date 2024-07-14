import 'package:flutter/material.dart';
import 'package:one/Widgets/TextField.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             inputs("Nome",const Icon(Icons.account_circle)),
          ],
        ),
      ),
     
    );
  }
}
import 'package:flutter/material.dart';

class TextFields extends StatefulWidget {
  const TextFields({super.key});

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: const TextField(
              decoration: InputDecoration(
              hintText:"oi eu sou o leo",//placeholder
              labelText:"Label",//value
              labelStyle: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              border: UnderlineInputBorder(
               borderSide: BorderSide(
                    color: Colors.blue,
                  ),
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                prefixIcon: Icon(Icons.person),
            )
          )
    );
  }
}


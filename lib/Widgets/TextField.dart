import 'package:flutter/material.dart';

  Container inputs(params,Icon ico) {
      return  Container(
              padding: const EdgeInsets.only(left: 40 , right: 40),
              margin: const EdgeInsets.only(top: 20,bottom: 20),
              child: TextField(
                
                decoration: InputDecoration(
                  labelText: params,
                  suffixIcon: ico,
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                    )
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1
                    )
                  )
                ),
              ),
          );
  }

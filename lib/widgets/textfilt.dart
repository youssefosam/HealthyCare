import 'package:flutter/material.dart';

class  TextFilt extends StatelessWidget {
  TextFilt({this.hintText});
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
        hintText: hintText,
        labelText: hintText,
        hintStyle: TextStyle(
          color: Colors.white
        ),
        labelStyle:TextStyle(
            color: Colors.white
        ) ,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(17)),
          borderSide: BorderSide(color: Colors.white)),
        ),
      ),
      );
  }
}
import 'package:flutter/material.dart';


const kTextFieldDecoration = InputDecoration(

  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xff6685D5), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xffFF7189), width: 3.0),
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
);

final Shader linearGradient = LinearGradient(
  colors: <Color>[Color(0xff6685D5), Color(0xffFF7189)],
).createShader(Rect.fromLTWH(0, 0, 200.0, 70.0));
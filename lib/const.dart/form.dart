import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  fillColor: Colors.grey,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(50)),
    borderSide: BorderSide(
      color: Colors.grey,
      width: 2.0,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.pink,
      width: 2.0,
    ),
  ),
);

import 'package:flutter/material.dart';
import 'package:form/form.dart';
import 'package:form/third.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Form1(),
      routes: {
        'form' : (context) => Form1(),
        'third' : (context) => ThirdPage(),
      },
    ),
    );
}


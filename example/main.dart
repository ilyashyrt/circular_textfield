// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:circular_textfield/circular_textfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularTextField(
          icon: Icons.access_time,
          width: 250,
          backgroundColor: Colors.grey,
          style: TextStyle(
            color: Colors.black,
          ),
          onChanged: (String value) {
            print(value.length);
          },
          hasIcon: true,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

//Hello world flutter app example demo...
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Welcome to flutter',
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Welcome to Flutter !'),
        ),
        body: const Center(
            child: const Text('Hello World !!!!'),
        ),
      
      ),
    );
  }

}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});  // Use super parameter

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jingley',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),  // Added const
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});  // Use super parameter

  @override
  HomePageState createState() => HomePageState();  // Made the private type public
}

class HomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jingley'),  // Added const
      ),
      body: const Center(  // Added const
        child: Text('Welcome to Jingley!'),  // Added const
      ),
    );
  }
}
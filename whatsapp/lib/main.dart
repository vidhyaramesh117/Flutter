import 'package:flutter/material.dart';

void main() 
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage()
      );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  // const MyHomePage({super.key, required this.title});

  
  // final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> 
{

  @override
  Widget build(BuildContext context) 
  {
   
    return Scaffold(
      appBar: AppBar(
        title: const Text("WHATSAPP"),
      ),
    );
    
  }
}

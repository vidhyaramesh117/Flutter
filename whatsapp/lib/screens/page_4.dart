import 'package:flutter/material.dart';

class page_4 extends StatefulWidget 
{
  const page_4({super.key});

  @override
  State<page_4> createState() => _page_4State();
}

class _page_4State extends State<page_4> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text("Page 4"),
      ),
    );
  }
}
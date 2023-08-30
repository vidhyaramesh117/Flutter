import 'package:flutter/material.dart';

class pages extends StatelessWidget 
{
  const pages({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text("Pages"),
      ),

      body: Center
      (
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
            ElevatedButton
            (
              onPressed: () 
              {
                Navigator.pop(context);
              },
              child: Text
              (
                "Back"
              ),
            )
          ],
        )
      ),
    );
    
  }
}
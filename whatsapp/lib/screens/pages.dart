import 'package:flutter/material.dart';
import 'package:whatsapp/screens/page_1.dart';

//Stack & Buttons

class pages extends StatefulWidget 
{
  const pages({super.key});

  @override
  State<pages> createState() => pagesState();
}

class pagesState extends State<pages> 
{
  
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
  
      appBar: AppBar
      (
        title: const Text("Pages"),
      ),

      body: Center
      (

//stack
        child: Stack
        (
          fit: StackFit.passthrough,
          // overflow: Overflow.visible,
          children: <Widget>
          [
            Positioned
            (
              top: 130,
              left: 150,
//elevated button
              child: ElevatedButton
              (
                child: const Text
                (
                  "Text",
                ),
                onPressed: () 
                {
                  Navigator.push
                  (
                    context,
                    MaterialPageRoute
                    (
                      builder: (context) => pages_1(),
                    )
                  );
                },
              )
              
            ),
             
            Positioned
            (
              child:  Column
              (   
                mainAxisAlignment: MainAxisAlignment.end,
                children: 
                [
                  Padding
                  (
                    padding: const EdgeInsets.only(left: 270),
                    child: ElevatedButton
                    (
                      onPressed: () 
                      {
                        Navigator.pop(context);
                      },
                      child: const Text
                      (
                        "Back"
                      ),
                    )
                  ), 
                ],
              )
            )
          ],
        ),
        
      )
      );
    
    
  }
}
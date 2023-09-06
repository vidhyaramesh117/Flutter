import 'package:flutter/material.dart';
import 'package:whatsapp/screens/page_1.dart';
import 'package:whatsapp/screens/page_2.dart';
import 'package:whatsapp/screens/page_3.dart';
import 'package:whatsapp/screens/page_4.dart';
import 'package:fluttertoast/fluttertoast.dart';

//Stack & Buttons 

class pages extends StatefulWidget 
{
  const pages({super.key});

  @override
  State<pages> createState() => pagesState();
}

class pagesState extends State<pages> 
{
  
  String inkwell = " ";

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
              top: 150,
              left: 120,
//icon button
              child: IconButton
              (
                icon: Icon(Icons.download),
                iconSize: 40,
                color: Colors.black,
                tooltip: "Icon Button",
                onPressed: () 
                {
                  Navigator.push
                  (
                    context,
                    MaterialPageRoute
                    (
                      builder: (context) => page_3(),
                    )
                  );
                },
                
              )
            ),

            Positioned
            (
              top: 200,
              left: 120,
//elevated button
              child: ElevatedButton
              (
                child: const Text
                (
                  "Page 1",
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
                onLongPress: () 
                {
                  Fluttertoast.showToast
                  (
                    msg: "Elevated Button",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 15,
                    backgroundColor: Colors.red,
                    textColor: Colors.blue,
                    fontSize: 16.0
                  );
                },
              )
              
            ),

            Positioned
            (
              top: 250,
              left: 120,
//floating action button extended
              child: FloatingActionButton.extended
              (
                tooltip: "Floating Action Button Extended",
                onPressed: () 
                {
                  Navigator.push
                  (
                    context,
                    MaterialPageRoute
                    (
                      builder: (context) => page_2(),
                    )
                  );
                },
                icon: Icon(Icons.pageview),
                label: Text("Forms"),
              )
            ),

            Positioned
            (
              top: 300,
              left: 120,
//inkwell
              child: Column
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>
                [
                  InkWell
                  (
                    splashColor: Colors.black,
                    highlightColor: Colors.green,
                    child: const Icon
                    (
                      Icons.last_page,
                      size: 50,
                    ),
                    onTap: () 
                    {
                      Navigator.push
                      (
                        context,
                        MaterialPageRoute
                        (
                          builder: (context) => const page_4(),
                        )
                      );
                      
                    },
                    onLongPress: ()
                    {
                      Fluttertoast.showToast
                      (
                        msg: "Inkwell",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 15,
                        backgroundColor: Colors.blue,
                        textColor: Colors.white,
                        fontSize: 16.0
                      );
                    },
                  ),

                  Text
                  (
                    inkwell.toString(),
                    style: TextStyle(fontSize: 30),
                  ),
                ],
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
            ),

          ],
        ),
        
      )
      );
    
    
  }
}
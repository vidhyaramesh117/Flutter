import 'package:flutter/material.dart';

void main() 
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      home: const MyHomePage()
      );
  }
}

class MyHomePage extends StatefulWidget 
{
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> 
{

  @override
  Widget build(BuildContext context) 
  {
   
    return Scaffold(
//appbar      
      appBar: AppBar
      (
        title: const Text("WHATSAPP"),
      ),

      drawer: Drawer
      (
        child: ListView
        (
          children: <Widget>
          [
            const DrawerHeader
            (
              decoration: BoxDecoration
              (
                color: Colors.blue,
              ),
              child: Text
              (
                "Extreme Psycho",
                style: TextStyle
                (
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),

            ListTile
            (
              title: const Text("Profile"),
              leading: const Icon(Icons.person),

              onTap: ()
              {
                Navigator.pop(context);
              }, 
            ),

            ListTile(
              title: const Text("LogOut"),
              leading: const Icon(Icons.logout),

              onTap: ()
              {
                Navigator.pop(context);
              },
            ),
        
          ],
        )
      ),
    ); 

  }
}

import 'package:flutter/material.dart';

class page_2 extends StatefulWidget 
{
  const page_2({super.key});

  @override
  State<page_2> createState() => _page_2State();
}

class _page_2State extends State<page_2> 
{
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      home: Scaffold
      (
        appBar: AppBar
        (
          title: Text("Page 2"),
        ),

        body: My_form(),
      ),
    );
  }
}

class My_form extends StatefulWidget 
{ 
  @override
  My_form_State createState()
  {
    return  My_form_State();
  }
}

class My_form_State extends State<My_form>
{
  final form_key = GlobalKey<My_form_State>();

  String? gender;
  @override
  Widget build(BuildContext context)
  {
    return Form
    (
      key: form_key,
      child: Column
      (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>
        [
          TextFormField
          (
            decoration: const InputDecoration
            (
              icon: Icon(Icons.person),
              labelText: "Name :",
              hintText: "Enter the name",
            ),
          ),
          
          TextFormField
          (
            decoration: const InputDecoration
            (
              icon: Icon(Icons.phone),
              labelText: "Phone :",
              hintText: "Enter the phone number",
            ),
          ),

          Column
          (
            children: 
            [
              const Padding
              (
                padding: EdgeInsets.only(left: 9),
                child: Text
                (
                  "Gender :",
                  style: TextStyle
                  (
                    fontSize: 17,
                  ),
                ),
              ),
              
              RadioListTile
              (
                title: Text("Male"),
                value: "male",
                groupValue: gender,
                onChanged: (value)
                {
                  setState(() 
                  {
                    gender = value.toString();
                  });
                  
                },
              ),

              RadioListTile
              (
                title: Text("Female"),
                value: "female",
                groupValue: gender,
                onChanged: (value)
                {
                  setState(() 
                  {
                    gender = value.toString();
                  });
                  
                },
              ),

              RadioListTile
              (
                title: Text("Other"),
                value: "other",
                groupValue: gender,
                onChanged: (value)
                {
                  setState(() 
                  {
                    gender = value.toString();
                  });
                  
                },
              ),
            ],
          ),

          Container
          (
            child: ElevatedButton
            (
              onPressed: () {},
              child: const Text("Submit"),
            ),
          ),

        ],
      ),
    );
  }
}


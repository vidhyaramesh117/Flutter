import 'package:flutter/material.dart';

class page_2 extends StatefulWidget 
{
  const page_2({super.key});

  @override
  State<page_2> createState() => _page_2State();
}
enum ConfirmAction {Cancel,Accept}

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
  bool? value_first = false;
  bool? value_second = false;
  bool? value_third = false;


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
            children: <Widget> 
            [
                const Align
                (
                  alignment :Alignment.centerLeft,
                  child: Padding
                  (
                    padding: EdgeInsets.only(left: 1.0),
                    child: Text
                    ( 
                      "\nGender :",
                      style: TextStyle
                      (
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
       
                Row
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>
                  [
                    Radio
                    (
                      value: "Male",
                      groupValue: gender,
                      onChanged: (value)
                      {
                        setState(() 
                        {
                          gender = value.toString();
                        });
                      },
                    ),
                    const Text("Male"),

                    Radio
                    (
                      value: "Female",
                      groupValue: gender,
                      onChanged: (value)
                      {
                        setState(() 
                        {
                          gender = value.toString();
                        });
                      },
                    ),
                    const Text("Female"),

                    Radio
                    (
                      value: "Other",
                      groupValue: gender,
                      onChanged: (value)
                      {
                        setState(() 
                        {
                          gender = value.toString();
                        });
                      },
                    ),
                    const Text("Other"),

                  ],
                ),
                
              ],
            ),

            const Align
            (
              alignment :Alignment.centerLeft,
              child: Padding
              (
                padding: EdgeInsets.only(left: 1.0),
                child: Text
                ( 
                  "\nCourses :",
                  style: TextStyle
                  (
                    fontSize: 17,
                  ),
                ),
              ),
            ),

            Column
            (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>
              [
                Row
                (
                  children: <Widget>
                  [
                    Checkbox
                    (
                      value: value_first,
                      onChanged: (bool? value) 
                      {  
                        setState (() 
                        {  
                          value_first = value;  
                        }
                        );  
                      },  
                    ),
                    const Text("Flutter"),
                  ]
                ),

                Row
                (
                  children: <Widget>
                  [
                    Checkbox
                    (
                      value: value_second,
                      onChanged: (bool? value)
                      {
                        setState(() 
                        {
                          value_second = value;
                        }
                        );
                      }
                    ),
                    const Text("Java"),
                  ],
                ),

                Row
                (
                  children: <Widget>
                  [
                    Checkbox
                    (
                      value: value_third,
                      onChanged: (bool? value)
                      {
                        setState(() 
                        {
                          value_third = value;
                        }
                        );
                      }
                    ),
                    const Text("Android"),
                  ],
                ),

              ],
            ),

            Row
            (
              children: <Widget>
              [
                Column
                (

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>
                  [
                    ElevatedButton
                    (
                      onPressed: () 
                      {
                        showDialog
                        (
                          context: context,
                          builder: (BuildContext context) 
                          {
                            return AlertDialog
                            (
                              title: const Text("Alert"),
                              content: const Text("Do you want to submit the form"),
                              actions: <Widget>
                              [
                                TextButton
                                (
                                  onPressed: ()
                                  {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("OK"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: const Text("Submit"),
                    ),
                  ],

                ),

                Row
                ( 
                  children: <Widget>
                  [
                    
                  Column
                  (
                    children: <Widget>
                    [
                      ElevatedButton
                      (
                        onPressed: ()
                        {
                          showDialog
                          (
                            context: context,
                            builder: (BuildContext context) 
                            {
                              return AlertDialog
                              (
                                title: const Text("Alert"),
                                content: const Text("Do you want to delete the form"),
                                actions: 
                                [
                                  TextButton
                                  (
                                    onPressed: ()
                                    {
                                      Navigator.of(context).pop(ConfirmAction.Cancel);
                                    },
                                    child: const Text("Cancel"),
                                  ),

                                  TextButton
                                  (
                                    onPressed: ()
                                    {
                                      Navigator.of(context).pop(ConfirmAction.Accept);
                                    },
                                    child: const Text("Delete"),
                                  )
                                ],
                              );
                            },
                          );
                        },
                        child: const Text("Delete"),
                      )
                    ],
                  )
                  ]
                )
        
            ],
          ),
          
        ],
      ),
    );
        
  }
}
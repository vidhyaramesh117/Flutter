import 'package:flutter/material.dart';

class page_2 extends StatelessWidget {
  const page_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Page 2"),
        ),
        body: MyForm(),
      ),
    );
  }
}

enum ConfirmAction { Cancel, Accept }

class MyForm extends StatefulWidget {
  @override
  MyFormState createState() => MyFormState();
}

class MyFormState extends State<MyForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool? valueFirst = false;
  bool? valueSecond = false;
  bool? valueThird = false;

  String? gender;

  @override
  Widget build(BuildContext context) {
    SnackBar snackBar = SnackBar(
      content: Text("Form is submitting"),
      duration: Duration(seconds: 15),
      action: SnackBarAction(
        label: "Undo",
        onPressed: () {},
      ),
    );

    return Scaffold(
      key: _scaffoldKey, // Assign the scaffold key here
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                labelText: "Name :",
                hintText: "Enter the name",
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.phone),
                labelText: "Phone :",
                hintText: "Enter the phone number",
              ),
            ),
            Column(
              children: <Widget>[
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 1.0),
                    child: Text(
                      "\nGender :",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Radio(
                      value: "Male",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                    const Text("Male"),
                    Radio(
                      value: "Female",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                    const Text("Female"),
                    Radio(
                      value: "Other",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                    const Text("Other"),
                  ],
                ),
              ],
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 1.0),
                child: Text(
                  "\nCourses :",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: valueFirst,
                      onChanged: (bool? value) {
                        setState(() {
                          valueFirst = value;
                        });
                      },
                    ),
                    const Text("Flutter"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: valueSecond,
                      onChanged: (bool? value) {
                        setState(() {
                          valueSecond = value;
                        });
                      },
                    ),
                    const Text("Java"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: valueThird,
                      onChanged: (bool? value) {
                        setState(() {
                          valueThird = value;
                        });
                      },
                    ),
                    const Text("Android"),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Alert"),
                              content: const Text("Do you want to submit the form"),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
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
                Row(
                  children: <Widget>[
                    
                    Column(
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text("Alert"),
                                  content: const Text("Do you want to delete the form"),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(ConfirmAction.Cancel);
                                      },
                                      child: const Text("Cancel"),
                                    ),
                                    TextButton(
                                      onPressed: () {
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
                  ],
                )
              ],
            ),
            Column(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text("SnackBar"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(page_2());
}

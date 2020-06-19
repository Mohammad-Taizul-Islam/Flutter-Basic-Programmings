import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  _MyState createState()=>_MyState();
  }
  
  class _MyState extends State<MyApp> {
    TextEditingController tec=TextEditingController();
    String fullname="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter TextField',
        home: Scaffold(appBar: AppBar(
          title: Text('Flutter TextField Demo'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  controller: tec,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your name'
                  ),
                  onChanged: (text){
                    setState(() {
                      fullname=text;
                    });
                  }
                )
              ),

              Container(
                margin: EdgeInsets.all(20),
                child: Text(fullname),
              )
            ],
          ),
        ),
        ),
        
    );
  }
}
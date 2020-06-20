import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  @override
  _MyState createState()=>_MyState();
}

class _MyState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raised Buttons',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dart Raised Buttons'),
        ),
        body:Center(
          child: Column(
            children: <Widget>[
              Text(
                'Raised Button with Different Properties',
                style: TextStyle(
                  fontSize: 18
                ),
              ),
              RaisedButton(
                child: Text('Disable Button')
              ),
              RaisedButton(onPressed: (){},child: Text('Default Button'),textColor: Colors.blue,),
              RaisedButton(onPressed: (){},child: Text('Button Color change'),color: Colors.blueGrey,),
              RaisedButton(onPressed: (){},child: Text('Button with Padding'),padding: EdgeInsets.all(20),),
              RaisedButton(onPressed: (){},child: Text('More Rounded Corners'),color: Colors.purpleAccent,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16)),)),
              RaisedButton(onPressed: (){},child: Text('Elevition Increase'),elevation: 5,),
              RaisedButton(onPressed: (){},child: Text('Splash colors as Red'),splashColor: Colors.red,),
              RaisedButton(onPressed: (){},child: Text('Elevetions Zero'),elevation: 0,),
              RaisedButton(onPressed: (){},textColor:Colors.white,padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                       Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                  ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child: const Text('Greadient Color'),
              ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: FlatButton(onPressed: (){}, child: Text('LOgin'),color: Colors.blueAccent,)
                
              )
        
                
            ],
          ),
        ),
      ),
    );
  }

}
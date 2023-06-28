import 'package:flutter/material.dart';

void main(){
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch : Colors.lightGreen
      ),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),

        body:Center(
          child: Card(
            shadowColor: Colors.black87,
            elevation: 7,
            child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Hello World!',style: TextStyle(fontSize: 25),),
          ),),
    );

  }

}
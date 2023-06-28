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
              textTheme: TextTheme(
                headline1:TextStyle(fontSize: 21,fontWeight: FontWeight.bold),
                subtitle1: TextStyle(fontSize: 21,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),
      )
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

        body:Column(
          children: [
            Text('Hello World',style: Theme.of(context).textTheme.headline1),
            Text('Hello World',style: Theme.of(context).textTheme.subtitle1 ),
            Text('Hello World',style:  Theme.of(context).textTheme.headline1),
            Text('Hello World',style: Theme.of(context).textTheme.subtitle1),
          ],
        )
    );

  }

}
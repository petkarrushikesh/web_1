import 'package:flutter/widgets.dart';
import 'package:flutter/painting.dart';
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
          primarySwatch : Colors.grey
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

        body: Row(
          children: [
            SizedBox(
              width: 100, // Increase the width value to make the avatar wider
              height: 100, // Increase the height value to make the avatar taller
              child: CircleAvatar(
                backgroundImage: AssetImage('android/assets/images/flutter-logo.jpg'),
              ),
            ),
            // Other widgets in the row
          ],
        )

    );

  }

}
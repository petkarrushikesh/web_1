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
          textTheme:
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

        body:Center(child: Container(
            width: 300,
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
            enabled: false,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(
                    color: Colors.deepOrange,
                    width: 2
                  )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2
                ),
              ),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11),
              borderSide: BorderSide(
                  color: Colors.black26,
                  width: 2)
             ),
            ),
            Container(height: 11,)
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                          color: Colors.deepOrange
                      )
                  )
              ),
            ),
          ],
        )))
    );

  }

}
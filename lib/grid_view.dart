import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatefulWidget {
  @override
  _FlutterAppState createState() => _FlutterAppState();
}

class _FlutterAppState extends State<FlutterApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    var arrColors = [Colors.red,
      Colors.indigo,
      Colors.grey.shade100,
      Colors.blue,
      Colors.amber,
      Colors.black26];
    return Scaffold(
        appBar: AppBar(
          title: Text("RR"),
        ),
        body:  Container(
          width: 200,
          child: GridView.extent(maxCrossAxisExtent: 100,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(color: arrColors[0],),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(color:  arrColors[1],),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(color: arrColors[2] ,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(color: arrColors[3],),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(color: arrColors[4],),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(color: arrColors[5],),
              ),
            ],),
        ));
  }
}

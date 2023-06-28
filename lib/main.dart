import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch:Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 var _width = 200.0;
 var _height = 100.0;
 bool flag = true;
 Decoration myDecor = BoxDecoration(
     borderRadius: BorderRadius.circular(2),
   color: Colors.blueGrey
 );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blue,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('foo Animation'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          AnimatedContainer(
          width: _width,
          height: _height,
          decoration: myDecor,
          curve: Curves.fastOutSlowIn,
          duration: Duration(seconds: 2),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: (){

           setState(() {
             if(flag) {
               _width = 100.0;
               _height = 200.0;
               myDecor = BoxDecoration(
                   borderRadius: BorderRadius.circular(50),
                 color: Colors.orange
               );
               flag =false;
             } else {
               _width = 200.0;
               _height = 100.0;
               myDecor = BoxDecoration(
                   borderRadius: BorderRadius.circular(2),
                   color: Colors.blueGrey
               );
               flag = true;
             }

           });

          }, child: Text('Animate')),
        ),
        ],
    ),
      )
    );
  }
}

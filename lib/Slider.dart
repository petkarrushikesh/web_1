import 'package:flutter/material.dart';
import 'package:web_1/widgets/rounded_button_wid.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  RangeValues values = RangeValues(0 ,1);
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    RangeLabels labels = RangeLabels( values.start.toString(), values.end.toString())

    return Scaffold(
        appBar: AppBar(

          backgroundColor: Theme.of(context).colorScheme.inversePrimary,

          title: Text('myApp'),
        ),
        body:  Center(
          child: RangeSlider(
            values: values,
            labels: labels,
            divisions: 10,
            activeColor: Colors.green,
            inactiveColor: Colors.green.shade50,
            onChanged: (newValue) {
              values = newValue;
              print('${newValue.start}, ${newValue.end}');
              setState(() {

              });

            },
          ),
        )
    );


  }
}

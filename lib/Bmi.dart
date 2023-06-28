import 'package:flutter/material.dart';
import 'package:web_1/widgets/rounded_button_wid.dart';


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
        primarySwatch: Colors.blue,

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
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  var result = "";
  var bgColor = Colors.indigo;


  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(

          backgroundColor: Theme.of(context).colorScheme.inversePrimary,

          title: Text('Your BMI'),
        ),
        body:   Center(
          child: Container(
            color: bgColor,
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text('BMI',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 25),),
                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    label: Text('Enter your weight(in kgs)'),
                    prefixIcon: Icon(Icons.line_weight),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 21,),

                TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                    label: Text('Enter your Height(in feet)'),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),



                SizedBox(height: 21,),
                TextField(
                  controller: inController,
                  decoration: InputDecoration(
                      label: Text('Enter your Height(in inch)'),
                      prefixIcon: Icon(Icons.height)
                  ),
                ),
                SizedBox(height: 16,),

                ElevatedButton(onPressed: () {
                  var wt = wtController.text.toString();
                  var ft = ftController.text.toString();
                  var inch = inController.text.toString();

                  if(wt != "" && ft!="" && inch!=""){

                    var iwt = int.parse(wt);
                    var iFt = int.parse(ft);
                    var iInch = int.parse(inch);

                    var tInch = (iFt*12) + iInch;

                    var tCm = tInch*2.54;

                    var tM = tCm/100;

                    var bmi = iwt/(tM*tM);

                    var msg = "";

                    if(bmi>25){
                      msg = "You are overweight!";
                      bgColor = Colors.orange;

                    } else if(bmi<18){
                      msg = "You're Underweight!";
                      bgColor =  Colors.red;

                    } else {
                      msg = "You're Healthy!";
                      bgColor = Colors.green;

                    }

                    setState(() {


                      result = "$msg \n Your BMI is: ${bmi.toStringAsFixed(2)}";
                    });

                  } else{
                    setState(() {
                      result = "Please fill all the required blanks";
                    });

                  }

                }, child: Text('Calculate')),

                SizedBox(height: 11,),
                Text(result,style: TextStyle(fontSize: 19),)
              ],
            ),
          ),
        )
    );


  }
}

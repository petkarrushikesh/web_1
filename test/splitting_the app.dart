import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

          title: Text('Hello'),
        ),
        body:Container(
          child: Column(
            children: [

              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.green,
                  child: ListView.builder(itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width:100,
                      child: CircleAvatar(
                        backgroundColor: Colors.deepPurple,
                      ),
                    ),
                  )),
                ),
              ),

              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.black38,
                  child: ListView.builder(itemBuilder: (context, index) =>Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.deepPurple,
                      ),
                      title: Text('Name'),
                      subtitle: Text('Mob no.'),
                      trailing: Icon(Icons.delete),
                    ),
                  )),
                ),
              ),

              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.pink,
                  child: ListView.builder(itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.cyan
                      ),
                    ),
                  ),itemCount: 10, scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 400,
                  color: Colors.deepOrange,
                  child: GridView.count(crossAxisCount: 4,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.cyan
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: Colors.cyan
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: Colors.cyan
                        ),
                      ),
                    ),
                  ],),
                ),
              ),
            ],
          ),
        )


    );
  }
}

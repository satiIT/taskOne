import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  int _counter = 0;
  Widget box = Container(
    height: 20,
    width: 30,
  );
  late List<Widget> sati;
  late List<List<Widget>> s;
  //sati.clear();
  void draw() {
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        sati.add(box);
      }
      s.add([]);
      for (int k = 0; k < 3; k++) {
        s.add([sati[k]]);
      }
      sati.clear();
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
            //height: 30,
            child: Column(
          children: [
            //   ListView.builder(
            //       itemCount: 3,
            //       itemBuilder: (BuildContext context, int index) {
            //         return Text("done");
            //       }),
            IconButton(
              icon: const Icon(Icons.zoom_in_sharp),
              onPressed: () {
                draw;
                Row(
                  children: [
                    ListView.builder(
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Text("$s[index]");
                      },
                    ),
                  ],
                );
              },
            ),
          ],
        )),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isFirstExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Container(
            height: isFirstExpanded ? 100 : 0,
            color: Colors.brown,
          ),
          Container(
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            height: 100,
            color: Colors.pink,
          ),
          Container(
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            height: 100,
            color: Colors.pink,
          ),
          GestureDetector(
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 100,
              color: isFirstExpanded ? Colors.green : Colors.red,
              child: Text('isFirstExpanded = $isFirstExpanded'),
            ),
            onTap: () {
              setState(() {
                isFirstExpanded = !isFirstExpanded;
              });
            },
          ),
          Container(
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            height: 100,
            color: Colors.pink,
          ),
          Container(
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            height: 100,
            color: Colors.pink,
          ),
          Container(
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            height: 100,
            color: Colors.pink,
          ),
          Container(
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            height: 100,
            color: Colors.pink,
          ),
          Container(
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            height: 100,
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}

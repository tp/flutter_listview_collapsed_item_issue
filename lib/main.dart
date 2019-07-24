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
  bool expandFirst = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  ExpandableWidget(
                    isExpanded: expandFirst,
                  ),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 100,
                      color: expandFirst ? Colors.green : Colors.red,
                      child: Text('expandFirst = $expandFirst'),
                    ),
                    onTap: () {
                      setState(() {
                        expandFirst = !expandFirst;
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
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandableWidget extends StatelessWidget {
  const ExpandableWidget({Key key, this.isExpanded}) : super(key: key);

  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    if (isExpanded) {
      return Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 25,
            ),
            child: Container(
              height: 100,
              color: Colors.blue,
            ),
          ),
        ],
      );
    }

    return Container();
  }
}

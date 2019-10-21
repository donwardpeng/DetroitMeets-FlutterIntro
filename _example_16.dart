import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // Declare a set list of images to cycle through
  final List<Image> _itemImages = [
    Image.asset('assets/cucsc.jpeg'),
    Image.asset('assets/u_of_w.png'),
    Image.asset('assets/vacation.jpg')
  ];

  int _index = 0;

  List<Image> _listOfImagesForScreen = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Detroit Meets',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Detroit Meets'),
            ),
            body: Stack(children: <Widget>[
              ListView(children: <Widget>[
                Card(
                  margin: EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/cucsc.jpeg'),
                      Padding(
                        padding: const EdgeInsets.all(8),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 16.0,
                    right: 16.0,
                    child: FloatingActionButton(
                      child: const Icon(Icons.add),
                      onPressed: () {},
                    ))
              ])
            ])));
  }
}

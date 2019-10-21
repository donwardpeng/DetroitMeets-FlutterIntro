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

  void onButtonPressed() {
    setState(() {
      _index++;
      if (_index >= _itemImages.length) {
        _index = 0;
      }
      _listOfImagesForScreen.add(_itemImages[_index]);
      print('Item Name = ' + _listOfImagesForScreen.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Detroit Meets',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Detroit Meets'),
            ),
            body: Stack(children: <Widget>[
              ListView(
                children: _listOfImagesForScreen
                    .map((element) => Card(
                          margin: EdgeInsets.all(8),
                          child: Column(
                            children: <Widget>[
                              element,
                              Padding(
                                padding: const EdgeInsets.all(8),
                              ),
                            ],
                          ),
                        ))
                    .toList(),
              ),
              Positioned(
                  bottom: 16.0,
                  right: 16.0,
                  child: FloatingActionButton(
                    child: const Icon(Icons.add),
                    onPressed: () {
                      onButtonPressed();
                    },
                  ))
            ])));
  }
}

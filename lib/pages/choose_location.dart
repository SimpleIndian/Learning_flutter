import 'package:flutter/material.dart';

class LocationChooser extends StatefulWidget {
  @override
  _LocationChooserState createState() => _LocationChooserState();
}

class _LocationChooserState extends State<LocationChooser> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Choose location'),
        ),
        body: RaisedButton(
            onPressed: () {
              setState(() {
                counter += 1;
              });
            },
            child: Text('count $counter')));
  }
}

import 'package:flutter/material.dart';

class LocationChooser extends StatefulWidget {
  @override
  _LocationChooserState createState() => _LocationChooserState();
}

class _LocationChooserState extends State<LocationChooser> {
  @override
  void initState() {
    super.initState();
    print('Hwllo from initstate');
  }

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    print('hello from build'); //when the object rebuild this will add value to the console
    return Scaffold(
        appBar: AppBar(
          title: Text('Choose location'),
        ),
        body: RaisedButton(
          onPressed: () {
            setState(() {
              counter +=1;
            });
          },
         child: Text('count $counter')));
  }
}

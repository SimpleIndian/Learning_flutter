import 'package:flutter/material.dart';

class LocationChooser extends StatefulWidget {
  @override
  _LocationChooserState createState() => _LocationChooserState();
}

class _LocationChooserState extends State<LocationChooser> {

  void getdata() async {
  //TODO: this approach will fail if the data dependent on each other.

  //   //api simulated
  //   var k = Future.delayed(Duration(seconds: 3),()=>print('Return Hello from simulated api')); 
  //  var g =  Future.delayed(Duration(seconds: 2),()=>print('Return data from simulated 2nd api')); 
  //   print('$g,$k');

//TODO: async await approach if the data dependent each other on to then

    //api simulated
    String data1 = await Future.delayed(Duration(seconds: 3),()=>'Return Hello from simulated api'); 
   String data2 = await Future.delayed(Duration(seconds: 2),()=>'Return data from simulated 2nd api'); 
    print("data1=$data1  data2 = $data2"); //will be execute together
    
  }

  @override
  void initState() {
    super.initState();
    getdata();
    print('Hwllo from initstate'); //this will be not get blocked because of async approach.
  }

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    print(
        'hello from build'); //when the object rebuild this will add value to the console
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

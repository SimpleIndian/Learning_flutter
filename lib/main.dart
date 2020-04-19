import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CardId(),
    ));



class CardId extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[50],
        title: Text(
          'My Profile',
          style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.amber[800]),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Text('main'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        elevation: 10.30,
        backgroundColor:Colors.yellow[50],
       child: Icon(
         Icons.add,
         color:Colors.yellow[900],
       ),
        ),
    );
  }
}



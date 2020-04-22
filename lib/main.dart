import 'package:flutter/material.dart';
import './quote.dart';
void main() =>
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Myquote()));

class Myquote extends StatefulWidget {
  @override
  _MyquoteState createState() => _MyquoteState();
}

class _MyquoteState extends State<Myquote> {
  List<Quotes> quoteList = [
    Quotes(author:'catty', text: 'this the new quote'),
    Quotes(author:'newton', text: 'the new thing  is a quote'),
    Quotes(author:'oscar-wilde',text: 'make thing bigger'),
  ];

  //addding a separate function to generate a card
Widget quoteTempate(quote){
  return Card(
    margin: EdgeInsets.all(10.0),
    elevation: 5.0,
    color: Colors.red[100],
    child:Padding(
      padding: const EdgeInsets.fromLTRB(20.0,30.0,20.0,20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text("\"${quote.text}\"",
            style: TextStyle(
              fontSize:20.0,
              color: Colors.red[800],
              fontFamily: 'ubuntu'
            ),
          ),
          SizedBox(
          height: 10.0,
          ),
          Text(" - ${quote.author}", style:TextStyle(
            fontSize:18.0,
            fontFamily: 'ubuntu',
            color:Colors.red[800]
          ))
      ],),
    ),
  );
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quote App',
          style: TextStyle(fontFamily: 'ubuntu', fontSize: 25.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: quoteList.map((quote)=>quoteTempate(quote)).toList() //passing the function
    )); 
  }
}

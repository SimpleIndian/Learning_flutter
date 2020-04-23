import 'package:flutter/material.dart';
import './quote.dart';

class QuoteCard extends StatelessWidget {
  final Quotes quote;
  final Function delet;
  QuoteCard(
      {this.quote,
      this.delet}
      ); //constructor accepet the value and make the widget

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      elevation: 0.0,
      color: Colors.red[100],
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "\"${quote.text}\"",
              style: TextStyle(
                  fontSize: 20.0, color: Colors.red[800], fontFamily: 'ubuntu'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(" - ${quote.author}",
                style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'ubuntu',
                    color: Colors.red[800])),
            SizedBox(height: 10.0),
            FlatButton.icon(
                onPressed: delet,
                icon: Icon(
                  Icons.delete,
                  color: Colors.red[800],
                ),
                label: Text(
                  'Delete',
                  style: TextStyle(
                      fontFamily: 'ubuntu',
                      fontSize: 18.0,
                      color: Colors.red[800],
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}

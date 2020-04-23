import 'package:flutter/material.dart';
import './quote_card.dart';
import './quote.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Myquote()));

class Myquote extends StatefulWidget {
  @override
  _MyquoteState createState() => _MyquoteState();
}

class _MyquoteState extends State<Myquote> {
  List<Quotes> quoteList = [
    Quotes(author: 'catty', text: 'this the new quote'),
    Quotes(author: 'newton', text: 'the new thing  is a quote'),
    Quotes(author: 'oscar-wilde', text: 'make thing bigger'),
  ];

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
            children: quoteList
                .map((quote) => QuoteCard(
                    quote: quote,
                    delet: () {
                      setState(() {
                        quoteList.remove(quote);
                      });
                    }))
                .toList()));
  }
}

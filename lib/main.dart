import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home : QuoteList(),
));

class QuoteList extends StatefulWidget {


  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes =[
    Quote(author : 'JP',text: 'hey there!!'),
    Quote(author: 'JP',text: 'hakuna matata'),
    Quote(author: 'NJ', text: 'hello')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar : AppBar(
        title : Text(
          'Awesome Quotes'
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) {
          return Text('${quote.text}-${quote.author}');
        }).toList(),
      ),
    );
  }
}

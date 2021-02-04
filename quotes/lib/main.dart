import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Quote.dart';
import 'quote_card.dart';
void main() => runApp(MaterialApp(
  home : QuotesList(),
));

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(authorName: "Hama",text:"Be yourself; everyone else is already taken"),
    Quote(authorName: "Fathi",text:"Be yourself; everyone else is already taken"),
    Quote(authorName: "Ahmed",text:"Be yourself; everyone else is already taken"),


  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((e) {
          return QuoteTemplate(
            quote: e,
            delete: () {
              setState(() {
                quotes.remove(e);
              });
            }
          );
        }).toList(),
      ),
    );
  }
}



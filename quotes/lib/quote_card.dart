import 'package:flutter/material.dart';
import 'Quote.dart';

class QuoteTemplate extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteTemplate({this.quote, this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0,
          16.0),
      child: Padding(
          padding: const EdgeInsets.all(12.0),
          child : Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                  quote.text,
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey[600]
                  )
              ),
              SizedBox(height: 6.0,),
              Text(
                quote.authorName,
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[800]
                ),
              ),
              SizedBox(height: 8.0,),
              FlatButton.icon(
          onPressed: delete,
          label : Text('delete quote'),
          icon: Icon(Icons.delete)
      )
            ],
          )),
    );
  }
}
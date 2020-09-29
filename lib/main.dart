import 'package:flutter/material.dart';
import 'QuoteCard.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

// class _QuoteListState extends State<QuoteList> {
//   List<Quote> quotes = [
//     Quote(text: "Text Fom the The Outer Galaxy", author: "Author 1"),
//     Quote(text: "Text 2", author: "Author 2"),
//     Quote(text: "Text 3", author: "Author 3"),
//   ];
//
//   Widget quoteTemplate(Quote quote) {
//     return Card(
//       margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
//       child: Padding(
//         padding: const EdgeInsets.all(18.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(quote.text,
//               style: TextStyle(fontSize: 20,color: Colors.grey[600]),),
//             SizedBox(height: 6.0,),
//             Text(quote.author,
//                 style: TextStyle(fontSize: 16,color: Colors.grey[800]))
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       appBar: AppBar(
//         title: Text("Awesome Quotes"),
//         backgroundColor: Colors.redAccent,
//         centerTitle: true,
//       ),
//       body: Column(
//         children: quotes.map((quote) {
//           return quoteTemplate(quote);
//         }).toList(),
//       ),
//     );
//   }
// }

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: "Text Fom the The Outer Galaxy", author: "Author 1"),
    Quote(text: "Text 2", author: "Author 2"),
    Quote(text: "Text 3", author: "Author 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) {
          return QuoteCard(
              quote: quote,
              delete: (() {
                setState(() {
                  quotes.remove(quote);
                });
              })
          );
        }).toList(),
      ),
    );
  }
}



import 'package:flutter/material.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({Key? key}) : super(key: key);

  @override
  _BookDetailsState createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('Details Screen'),
      centerTitle: true,
    ));
  }
}

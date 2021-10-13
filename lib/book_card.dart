import 'package:flutter/material.dart';

class BookCard extends StatefulWidget {
  const BookCard({Key? key, this.height, this.width, this.color, this.bookName, this.author}) : super(key: key);
  final double? height;
  final double? width;
  final Color ?color;
  final String? bookName;
  final String? author;
  

  @override
  _BookCardState createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
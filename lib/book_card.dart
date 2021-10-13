import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard(
      {Key? key,
      this.height,
      this.width,
      this.containerColor,
      this.bookNameRu,
      this.bookNameAr,
      this.textColor,
      this.author})
      : super(key: key);
  final double? height;
  final double? width;
  final Color? containerColor;
  final Color? textColor;
  final String? bookNameRu;
  final String? author;
  final String? bookNameAr;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 7, left: 7),
          child: Container(
              height: 240,
              width: 180,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.6),
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(16)),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 5),
          child: Container(
              height: 240,
              width: 180,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.6),
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(16)),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3, left: 3),
          child: Container(
              height: 240,
              width: 180,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.6),
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(16)),
              )),
        ),
        Column(
          children: [
            Container(
              height: 240,
              width: 180,
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0)
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xff433f5f),
                      Color(0xff433f5f),
                    ],
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    bookNameAr ??'',
                    style: TextStyle(
                        fontFamily: 'Scheherazade',
                        fontSize: 18,
                        color: textColor),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    bookNameRu ?? '',
                    style: TextStyle(
                        fontFamily: 'Scheherazade',
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: textColor),
                  ),
                  const SizedBox(
                    height: 60.0,
                  ),
                  Text(
                    author ?? '',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        wordSpacing: 1.5,
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        color: textColor),
                  )
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

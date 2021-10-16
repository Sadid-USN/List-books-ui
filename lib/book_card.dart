import 'package:flutter/material.dart';


class BookCard extends StatelessWidget {
  const BookCard(
      {Key? key,
      this.height,
      this.width,
      this.containerColor,
      this.bookTitleAr,
      this.titleColorAr,
      this.bookTitleRu,
      this.titleColorRu,
      this.authorName,
      this.authorNameColor,
      })
      : super(key: key);
  final double? height;
  final double? width;
  final BoxDecoration? containerColor;
  final Color? titleColorAr;
  final Color? titleColorRu;
  final Color? authorNameColor;
  final String? bookTitleRu;
  final String? authorName;
  final String? bookTitleAr;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 6, left: 6),
          child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.6),
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(16)),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4, left: 4),
          child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.6),
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(16)),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2, left: 2),
          child: Container(
               height: height,
              width: width,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.6),
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(16)),
              )),
        ),
        Column(
          children: [
            Flexible(
              child: Container(
                 height: height,
                width: width,
                decoration: containerColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      bookTitleAr ??'',
                      style: TextStyle(
                          fontFamily: 'Scheherazade',
                          fontSize: 18,
                          color: titleColorAr),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        bookTitleRu ?? '',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          
                          overflow: TextOverflow.visible,
                            fontFamily: 'Scheherazade',
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: titleColorRu),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        authorName ?? '',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            wordSpacing: 1.5,
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            color: authorNameColor),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    Key? key,
    this.height,
    this.width,
    this.backgroundColor = 0,
    this.title,
    this.titleColor = 0,
    this.titleSize = 18,
    this.topText,
    this.topTextColor = 0,
    this.topTextSize = 18,
    this.bottomText,
    this.bottomTextColor = 0,
    this.bottomTextSize = 15,
  }) : super(key: key);
  final double? height;
  final double? width;
  final int backgroundColor;
  final int topTextColor;
  final int titleColor;
  final int bottomTextColor;
  final String? title;
  final String? bottomText;
  final String? topText;
  final double titleSize;
  final double topTextSize;
  final double bottomTextSize;

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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    // border: Border.all(color: Colors.black, width: 0.6),
                    color: Colors.white,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(backgroundColor),
                        Color(backgroundColor - 0x33000000),
                      ],
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(flex: 1),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        topText ?? '',
                        style: TextStyle(
                            fontSize: topTextSize, color: Color(topTextColor)),
                      ),
                    ),
                    Spacer(flex: 2),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        title ?? '',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            overflow: TextOverflow.visible,
                            fontSize: titleSize,
                            fontWeight: FontWeight.w800,
                            color: Color(titleColor)),
                      ),
                    ),
                    Spacer(flex: 2),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        bottomText ?? '',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: bottomTextSize,
                            color: Color(bottomTextColor)),
                      ),
                    ),
                    Spacer(flex: 1),
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

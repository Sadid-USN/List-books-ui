import 'package:flutter/material.dart';

Color titleColorAr = const Color(0xffFFD15C);
Color titleColorRu = const Color(0xffFFffff);
Color authorNameColor = const Color(0xffF1D786);

BoxDecoration containerColor1 = const BoxDecoration(
    borderRadius:  BorderRadius.all(Radius.circular(16)),
   // border: Border.all(color: Colors.black, width: 0.6),
    color: Colors.white,
    gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color(0xff3a636a),
        Color(0xff416971),
      
      ],
    ));

BoxDecoration containerColor2 = const BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(16)),
    gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color(0xff704040),
        Color(0xff714141),
      ],
    ));

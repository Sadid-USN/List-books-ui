import 'package:book_ui/book_card.dart';
import 'package:flutter/material.dart';
import 'colors/colors.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Books b magrifah'),
        ),

        body: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
           BookCard(
        bookNameAr: 'ثلاثة الأصول',
        author: 'Мухаммад ибн Абдуль Ваххаб',
        bookNameRu: "Три основы",
        containerColor: Color(0xff433f5f),
        height: 235,
        width: 175,

        ),
             BookCard(
        bookNameAr: 'كتاب التوحبد',
        author: 'Мухаммад ибн Абдуль Ваххаб',
        bookNameRu: "Книга единобожия",
        containerColor: Color(0xff783a3a),
         height: 235,
        width: 175,

        ),
        ],)
        // body: InkWell(
        //     onTap: () {
        //       Navigator.push(context, MaterialPageRoute(builder: (context) {
        //         return const Details();
        //       }));
        //     },
        //     child: cardBook())
            
            
            );
  }
}



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
          children: [
            BookCard(
              titleColorRu: titleColorRu,
              authorNameColor: authorNameColor,
              titleColorAr: titleColorAr,
              bookTitleAr: 'ثلاثة الأصول',
              authorName: 'Мухаммад\nибн Абдуль Ваххаб',
              bookTitleRu: "ВОПРОСЫ ПО КНИГЕ ТРИ ОСНОВЫ",
              containerColor: containerColor1,
              height: 240,
              width: 175,
            ),
            BookCard(
              titleColorRu: titleColorRu,
              titleColorAr: titleColorAr,
              authorNameColor: authorNameColor,
              bookTitleAr: 'كتاب التوحبد',
              authorName: 'Мухаммад\nибн Абдуль Ваххаб',
              bookTitleRu: "Китаб ат-Таухид книга единобожия",
              containerColor: containerColor2,
              height: 240,
              width: 175,
            ),
              BookCard(
              titleColorRu: titleColorRu,
              titleColorAr: titleColorAr,
              authorNameColor: authorNameColor,
              bookTitleAr: 'كتاب التوحبد',
              authorName: 'Мухаммад\nибн Абдуль Ваххаб',
              bookTitleRu: "Китаб ат-Таухид книга единобожия",
              containerColor: containerColor3,
              height: 240,
              width: 175,
            ),
          ],
        )
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

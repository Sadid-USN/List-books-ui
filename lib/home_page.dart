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
              titleColor: titleColorRu,
              bottomTextColor: authorNameColor,
              topTextColor: titleColorAr,
              topText: 'ثلاثة الأصول',
              bottomText: 'Мухаммад\nибн Абдуль Ваххаб',
              title: "ВОПРОСЫ ПО КНИГЕ ТРИ ОСНОВЫ",
              backgroundColor: containerColor_1,
              height: 240,
              width: 175,
            ),
            BookCard(
              titleColor: titleColorRu,
              topTextColor: titleColorAr,
              bottomTextColor: authorNameColor,
              topText: 'كتاب التوحبد',
              bottomText: 'Мухаммад\nибн Абдуль Ваххаб',
              title: "Китаб ат-Таухид книга единобожия",
              backgroundColor: containerColor_2,
              height: 240,
              width: 175,
            ),
              BookCard(
              titleColor: titleColorRu,
              topTextColor: titleColorAr,
              bottomTextColor: authorNameColor,
              topText: 'كتاب التوحبد',
              bottomText: 'Мухаммад\nибн Абдуль Ваххаб',
              title: "Китаб ат-Таухид книга единобожия",
              backgroundColor: containerColor_3,
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

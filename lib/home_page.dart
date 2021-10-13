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

        body: const BookCard(
        bookNameAr: 'ثلاثة الأصول',
        author: 'Мухаммад ибн Абдуль Ваххаб',
        bookNameRu: "Три основы",
        containerColor: Color(0xff433f5f),
        height: 100,
        width: 100,

        ),
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



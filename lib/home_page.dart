import 'package:book_ui/details_book.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<Map> books = [
    {
      "name": 'Три основы',
      "arabic": 'ثلاثة الأصول',
      "author": 'Мухаммад ибн Абдуль Ваххаб'
    },
    {
      "name": 'Китаб ат-Таухид',
      "arabic": 'كتاب التوحيد',
      "author": 'Мухаммад ибн Абдуль Ваххаб'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books b magrifah'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Details();
            }));
          },
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / 1.3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 18,
                crossAxisCount: 2,
              ),
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.only(top: 5),
              physics: const BouncingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                // final Books = books;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Stack(children: [
                    Container(
                      margin: const EdgeInsets.only(top: 5, left: 5),
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black38,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0)
                          ],
                          border: Border.all(width: 0.9),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16.0))),
                    ),
                    Container(
                      //  padding: EdgeInsets.only(right: 15),
                      margin: const EdgeInsets.only(
                          top: 5, left: 5, right: 3, bottom: 2),
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.9),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16.0))),
                    ),
                    Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0)),
                        side: BorderSide(color: Colors.black87, width: 1),
                      ),
                      color: const Color(0XFF11444D),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 25.0,
                          ),
                          Text(
                            books[1]['arabic'],
                            style: const TextStyle(
                                fontFamily: 'Scheherazade',
                                fontSize: 18,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          Text(
                            books[1]['name'],
                            style: const TextStyle(
                                fontFamily: 'Scheherazade',
                                fontSize: 18,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 80.0,
                          ),
                          Text(
                            books[0]['author'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                wordSpacing: 1.5,
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ]),
                );
              }),
        ),
      ),
    );
  }
}

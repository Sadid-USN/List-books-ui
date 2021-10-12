import 'package:book_ui/details_book.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
 const HomePage({Key? key}) : super(key: key);

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
                return cardBook();
              }),
        ),
      ),
    );
  }
}

Widget cardBook() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Stack(children: [
      Container(
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
                Colors.blue,
                Colors.red,
              ],
            )),
        child: Column(
          children: const [
            SizedBox(
              height: 25.0,
            ),
            Text(
              'ثلاثة الأصول',
              style: TextStyle(
                  fontFamily: 'Scheherazade',
                  fontSize: 18,
                  color: Colors.white),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Три основы',
              style: TextStyle(
                  fontFamily: 'Scheherazade',
                  fontSize: 18,
                  color: Colors.white),
            ),
            SizedBox(
              height: 80.0,
            ),
            Text(
              'Мухаммад ибн Абдульуахаб',
              textAlign: TextAlign.center,
              style: TextStyle(
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
}

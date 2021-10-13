import 'package:flutter/material.dart';
import 'details_book.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books b magrifah'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 7, left: 7),
            child: Container(
                height: 240,
                width: 185,
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
                width: 185,
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
                width: 185,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 0.6),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                )),
          ),
          Column(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const Details();
                    }));
                  },
                  child: Container(
                    height: 240,
                    width: 185,
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
                      children: const [
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'ثلاثة الأصول',
                          style: TextStyle(
                              fontFamily: 'Scheherazade',
                              fontSize: 18,
                              color: Color(0xffFFD15C)),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Text(
                          'ТРИ ОСНОВЫ',
                          style: TextStyle(
                              fontFamily: 'Scheherazade',
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 60.0,
                        ),
                        Text(
                          'Мухаммад\nибн Абдуль Ваххаб',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              wordSpacing: 1.5,
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: Color(0xffFFD15C)),
                        )
                      ],
                    ),
                  ),
                ),
            

              
            ],
          ),

          
        ]),
      ),
    );
  }
}

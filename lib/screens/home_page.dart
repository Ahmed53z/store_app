import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = "HomePage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.cartPlus,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "New Trend",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 220,
              height: 130,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    blurRadius: 40,
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 0,
                    offset: const Offset(10, 10))
              ]),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "HandBag Lv",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            const Text(
                              r"$245",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 85, 85, 85)),
                            ),
                            IconButton(
                              icon:const Icon(Icons.favorite,
                              color: Colors.red,) , onPressed: () {
                                
                              },
                            )
                          ],
                        ),
                      ]),
                ),
              ),
            ),
            Positioned(
                right: 32,
                bottom: 85,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2019/04/26/07/14/store-4156934__340.png",
                  height: 100,
                ))
          ],
        ),
      ),
    );
  }
}

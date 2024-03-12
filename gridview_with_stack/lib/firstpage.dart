import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 223, 221, 221),
        body: Center(
          child: Stack(
            children: [
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 10),
                itemCount: 8,
                itemBuilder: (ctx, i) {
                  return Card(
                      child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(hello[i]),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, top: 130),
                        child: Text(
                          name[i],
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ));
                },
              ),
            ],
          ),
        ));
  }
}

final List hello = [
  "images/achinga.jpg",
  "images/amaranthus green.jpg",
  "images/banana.jpg",
  "images/betroot.jpg",
  "images/brinjal.jpg",
  "images/broccoli.jpg",
  "images/button mushroom.jpg",
  "images/blurberry.jpg",
];
List name = [
  "Achinga",
  "Amaranthus",
  "Banana",
  "Betroot",
  "Brinjal",
  "Broccoli",
  "Mushroom",
  "Blueberry",
];

import 'package:flutter/material.dart';
import 'package:queritel_practical/model/cats_model.dart';
import 'package:queritel_practical/variables.dart';

class CatDescriptionCard extends StatelessWidget {
  CatsModel cat;

  CatDescriptionCard({Key? key, required this.cat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: width > webScreenSize
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(cat.photo),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Text(
                              cat.name,
                              style: const TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Age",
                                  style: TextStyle(fontSize: 8, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${cat.age}",
                                  style: TextStyle(fontSize: 8),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Weight",
                                  style: TextStyle(fontSize: 8, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${cat.weight}",
                                  style: TextStyle(fontSize: 8, color: Colors.black),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              cat.description,
                              style: TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )

                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(cat.photo),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    cat.name,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        "Age",
                        style: TextStyle(fontSize: 8, color: Colors.black),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text(
                        "${cat.age}",
                        style: TextStyle(fontSize: 8, color: Colors.black),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      Text(
                        "Weight",
                        style: TextStyle(fontSize: 8, color: Colors.black),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text(
                        "${cat.weight}",
                        style: TextStyle(fontSize: 8, color: Colors.black),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    cat.description,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ],
              ),
      ),
    );
  }
}

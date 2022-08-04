import 'package:flutter/material.dart';
import 'package:queritel_practical/model/dogs_model.dart';

import 'package:queritel_practical/variables.dart';

class DogDescriptionCard extends StatelessWidget {
  DogsModel dog;

  DogDescriptionCard({Key? key, required this.dog}) : super(key: key);

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
              ?  Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(dog.photo),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          dog.name,
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
                              "${dog.age}",
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
                              "${dog.weight}",
                              style: TextStyle(fontSize: 8, color: Colors.black),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          dog.description,
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
                    Image.network(dog.photo),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      dog.name,
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
                          "${dog.age}",
                          style: TextStyle(fontSize: 8, color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 15,
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
                          "${dog.weight}",
                          style: TextStyle(fontSize: 8, color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      dog.description,
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
        ));
  }
}

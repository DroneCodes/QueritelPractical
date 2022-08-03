import 'package:flutter/material.dart';
import 'package:queritel_practical/variables.dart';


class DescriptionCard extends StatelessWidget {

  String name;
  String photo;
  String description;
  int age;
  int weight;
  DescriptionCard({Key? key, required this.name, required this.photo, required this.description, required this.weight, required this.age}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(30),
      child: Center(
        child: width > webScreenSize ? Row(
          children: [
            Image.network(photo, height: 300,),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 100,
              child: Column(
                children: [
                  Text(
                    name, style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold
                  ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  Row(
                    children: [
                      Column(
                        children: [
                          Text("Age"),
                          SizedBox(
                            height: 9,
                          ),
                          Text("$age")
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Text("Weight"),
                          SizedBox(
                            height: 9,
                          ),
                          Text("$weight")
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  Text(
                      description
                  ),
                ],
              ),
            )
          ],
        ) :Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(photo),
            const SizedBox(
              height: 20,
            ),
            Text(
              name, style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold
            ),
            ),

            const SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Column(
                  children: [
                    Text("Age"),
                    SizedBox(
                      height: 9,
                    ),
                    Text("$age")
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Text("Weight"),
                    SizedBox(
                      height: 9,
                    ),
                    Text("$weight")
                  ],
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            Text(
              description
            ),
          ],
        ),
      ),
    );
  }
}


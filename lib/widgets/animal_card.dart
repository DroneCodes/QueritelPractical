import 'package:flutter/material.dart';
import 'package:queritel_practical/screens/cats.dart';
import 'package:queritel_practical/screens/cats_description_screen.dart';
import 'package:queritel_practical/widgets/description_card.dart';

class AnimalCard extends StatelessWidget {
  String name;
  String photo;

  AnimalCard({Key? key, required this.name, required this.photo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DescriptionScreen();
        }));
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Image.network(photo),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
        height: 370,
      ),
    );
  }
}

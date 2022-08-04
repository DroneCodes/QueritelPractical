import 'package:flutter/material.dart';
import 'package:queritel_practical/model/cats_model.dart';
import 'package:queritel_practical/widgets/cat_description_card.dart';

class CatAnimalCard extends StatelessWidget {
  CatsModel cat;

  CatAnimalCard({Key? key, required this.cat})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CatDescriptionCard(cat: cat);
        }));
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Image.network(cat.photo),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              cat.name,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
        height: 370,
      ),
    );
  }
}

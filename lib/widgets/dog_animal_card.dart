
import 'package:flutter/material.dart';
import 'package:queritel_practical/model/dogs_model.dart';
import 'package:queritel_practical/widgets/dog_description_card.dart';

class DogAnimalCard extends StatelessWidget {
  DogsModel dog;

  DogAnimalCard({Key? key, required this.dog})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DogDescriptionCard(dog: dog);
        }));
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Image.network(dog.photo),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              dog.name,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
        height: 370,
      ),
    );
  }
}
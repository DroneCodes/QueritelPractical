import 'package:flutter/material.dart';

class AnimalCard extends StatelessWidget {
  String name;
  String photo;
  Function? press;

  AnimalCard({Key? key, required this.name, required this.photo, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(photo),
              const SizedBox(
                height: 15,
              ),
              Text(
                name, style: const TextStyle(
                  color: Colors.black
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:queritel_practical/api_service/dogs_api_service.dart';
import 'package:queritel_practical/model/dogs_model.dart';
import 'package:queritel_practical/widgets/animal_card.dart';


class DogsPage extends StatefulWidget {
  const DogsPage({Key? key}) : super(key: key);

  @override
  State<DogsPage> createState() => _DogsPageState();
}

class _DogsPageState extends State<DogsPage> {

  late List<DogsModel>? dogsmodel = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    dogsmodel = (await DogApiService().getDogs())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.only(
            left: 40,
            right: 40,
          ),
          child: dogsmodel == null || dogsmodel!.isEmpty ? const Center(
            child: CircularProgressIndicator(),
          )
              : GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: dogsmodel!.length,
              itemBuilder: (BuildContext context, int index) {
                return AnimalCard(name: dogsmodel![index].name, photo: dogsmodel![index].photo);
              }),
        ),
    );
  }
}






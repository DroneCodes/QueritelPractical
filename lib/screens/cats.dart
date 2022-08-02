import 'package:flutter/material.dart';
import 'package:queritel_practical/api_service/cats_api_service.dart';
import 'package:queritel_practical/model/cats_model.dart';
import 'package:queritel_practical/widgets/animal_card.dart';

class CatsPage extends StatefulWidget {
  const CatsPage({Key? key}) : super(key: key);

  @override
  State<CatsPage> createState() => _CatsPageState();
}

class _CatsPageState extends State<CatsPage> {

  late List<CatsModel>? catsmodel  = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    catsmodel = (await CatsApiService().getCats())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            left: 40,
            right: 40,
          ),
          child: catsmodel == null || catsmodel!.isEmpty ? const Center(
            child: CircularProgressIndicator(),
          )
              : GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 280,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: catsmodel!.length,
              itemBuilder: (BuildContext context, int index) {
                return AnimalCard(name: catsmodel![index].name, photo: catsmodel![index].photo);
              }),
        ),
      ),
    );
  }
}

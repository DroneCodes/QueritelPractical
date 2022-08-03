import 'package:flutter/material.dart';
import 'package:queritel_practical/api_service/cats_api_service.dart';
import 'package:queritel_practical/model/cats_model.dart';
import 'package:queritel_practical/widgets/description_card.dart';

class DescriptionScreen extends StatefulWidget {

  DescriptionScreen({Key? key}) : super(key: key);

  @override
  _DescriptionScreenState createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body:ListView.builder(
          itemBuilder: (BuildContext context, int index){
            return DescriptionCard(
              age: catsmodel![index].age,
              name: catsmodel![index].name,
              weight: catsmodel![index].weight,
              photo: catsmodel![index].photo,
              description: catsmodel![index].description,
            );
          },
        itemCount: catsmodel!.length,
      ),
    );
  }
}
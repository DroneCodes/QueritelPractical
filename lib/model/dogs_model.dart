import 'dart:convert';

List<DogsModel> dogsModelFromJson(Map<String, dynamic> map) {
  final List listData = map['dogs'] as List;
  return listData.map<DogsModel>((e) => DogsModel.fromJson(e)).toList();
}

String catsModelToJson(List<DogsModel> data) =>
    json.encode(List<dynamic>.from(data.map((i) => i.toJson())));

class DogsModel {
  DogsModel({
    required this.name,
    required this.photo,
    required this.age,
    required this.weight,
    required this.description,
  });

  String name;
  String photo;
  int age;
  int weight;
  String description;

  factory DogsModel.fromJson(Map<String, dynamic> json) => DogsModel(
    name: json["name"],
    photo: json["photo"],
    age: json["age"],
    weight: json["weight"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "photo": photo,
    "age": age,
    "weight": weight,
    "description": description,
  };
}
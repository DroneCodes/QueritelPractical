import 'dart:convert';

List<CatsModel> catsModelFromJson(Map<String, dynamic> map) {
  final List listData = map['cats'] as List;
  return listData.map<CatsModel>((e) => CatsModel.fromJson(e)).toList();
}

String catsModelToJson(List<CatsModel> data) =>
    json.encode(List<dynamic>.from(data.map((i) => i.toJson())));

class CatsModel {
  CatsModel({
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

  factory CatsModel.fromJson(Map<String, dynamic> json) => CatsModel(
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
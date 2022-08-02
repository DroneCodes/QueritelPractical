import 'dart:convert';

List<CatsModel> catsModelFromJson(String string) =>
    List<CatsModel>.from(json.decode(string).map((i) => CatsModel.fromJson(i)));

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
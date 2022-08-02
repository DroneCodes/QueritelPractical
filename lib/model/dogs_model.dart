import 'dart:convert';

List<DogsModel> catsModelFromJson(String string) =>
    List<DogsModel>.from(json.decode(string).map((i) => DogsModel.fromJson(i)));

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
import 'dart:convert';

 
List<newPost> newPostFromJson(String str) =>
    List<newPost>.from(json.decode(str).map((x) => newPost.fromMap(x)));


class newPost {
  newPost({
    required this.id,
    required this.age,
    required this.gender,
    required this.sayings,
    required this.name,
    required this.url,
    required this.species,
  });
  int id;
  String name;
  String age;
  String gender;
  String sayings;
  String url;
  String species;

  factory newPost.fromMap(Map<String, dynamic> json) => newPost(
      id: json["id"],
      name: json["name"]["first"] +
          " " +
          json["name"]["middle"] +
          " " +
          json["name"]["last"],
      age: json["age"],
      gender: json["gender"],
      sayings: json["sayings"].join(' ')
      // +json["sayings"][1]+json["sayings"][2]+json["sayings"][3]
      ,
      url: json["images"]["main"], 
           species: json["species"]);

}

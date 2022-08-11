import 'dart:ui';

class Dog {
  final String name;
  final String breed;
  final String age;
  final String distance;
  final List<String> photos;
  final String sexo;
  final String about;
  final Color color;
  Dog({
    required this.color,
    required this.name,
    required this.breed,
    required this.age,
    required this.distance,
    required this.photos,
    required this.sexo,
    required this.about,
  });
  static Dog fromJson(json) => Dog(
        name: json['name'],
        breed: json['breed'],
        age: json['age'],
        distance: json['distance'],
        photos: json['photos'],
        sexo: json['sexo'],
        about: json['about'],
        color: json['color'],
      );
}

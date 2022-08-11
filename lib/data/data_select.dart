import 'package:desafio_pet/models/select_model.dart';

List<DataSelect> getSelect() {
  const data = [
    {
      "icon": "https://cdn-icons-png.flaticon.com/512/194/194279.png",
      "title": "Dogs",
      "isSelected": true,
    },
    {
      "icon":
          "https://icons.iconarchive.com/icons/iconsmind/outline/256/Cat-icon.png",
      "title": "Cats",
      "isSelected": false,
    },
    {
      "icon":
          "https://cdn1.iconfinder.com/data/icons/animals-and-pets/28/animal-47-512.png",
      "title": "Birds",
      "isSelected": false,
    },
  ];

  return data.map<DataSelect>(DataSelect.fromJson).toList();
}

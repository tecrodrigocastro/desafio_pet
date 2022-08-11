import 'package:desafio_pet/models/dog_model.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);
  static const routeName = '/detaisPage';

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeigth = MediaQuery.of(context).size.height;
    Dog dog = ModalRoute.of(context)!.settings.arguments as Dog;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 30,
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: sizeHeigth,
        width: sizeWidth,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dog.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  Icon(
                    dog.sexo == 'Female' ? Icons.female : Icons.male,
                    color: Colors.grey,
                    size: 40,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dog.breed,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    dog.age,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                  Text(
                    dog.distance,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

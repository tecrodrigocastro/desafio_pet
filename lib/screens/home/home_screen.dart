import 'package:desafio_pet/data/data.dart';
import 'package:desafio_pet/data/data_select.dart';
import 'package:desafio_pet/models/dog_model.dart';
import 'package:desafio_pet/models/select_model.dart';
import 'package:desafio_pet/screens/details_dog/details_dog.dart';
import 'package:desafio_pet/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = '/';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Dog> dogs = getDogs();
  List<DataSelect> selects = getSelect();

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeigth = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: customAppBar(),
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SizedBox(
          height: sizeHeigth,
          width: sizeWidth,
          child: Column(
            children: [
              const SizedBox(height: 40),
              SizedBox(
                width: sizeWidth,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(Icons.tune),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        height: 50,
                        width: sizeWidth - 70,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: sizeWidth,
                              child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: selects.length,
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(width: 30),
                                  itemBuilder: (context, index) {
                                    final select = selects[index];
                                    return InkWell(
                                      borderRadius: BorderRadius.circular(50),
                                      onTap: () {
                                        if (select.isSelected) {
                                          setState(() {
                                            select.isSelected =
                                                !selects[index].isSelected;
                                          });
                                        } else {
                                          setState(() {
                                            select.isSelected =
                                                !selects[index].isSelected;
                                          });
                                        }
                                      },
                                      child: Container(
                                        width: 100,
                                        decoration: BoxDecoration(
                                          color: select.isSelected
                                              ? Colors.deepOrange
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      select.icon,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                select.title,
                                                style: TextStyle(
                                                  color: select.isSelected
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: sizeWidth,
                  height: sizeHeigth / 1.5,
                  child: ListView.builder(
                    itemCount: dogs.length,
                    itemBuilder: ((context, index) {
                      final dog = dogs[index];
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                      DetailsPage.routeName,
                                      arguments: dogs[index]);
                                },
                                child: Container(
                                  height: 100,
                                  width: sizeWidth / 3,
                                  decoration: BoxDecoration(
                                    color: dog.color,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(dog.photos[0]),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    dog.name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    dog.breed,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    '${dog.sexo}, ${dog.age}',
                                    style: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        color: Colors.red,
                                      ),
                                      Text(
                                        dog.distance,
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    dogs[index].favorite =
                                        !dogs[index].favorite;
                                  });
                                },
                                child: Icon(
                                  dog.favorite
                                      ? Icons.favorite
                                      : Icons.favorite_outline,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

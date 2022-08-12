import 'package:desafio_pet/models/dog_model.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);
  static const routeName = '/detaisPage';

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int imageId = 0;
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
            onPressed: () {
              setState(() {
                dog.favorite = !dog.favorite;
              });
            },
            icon: Icon(
              dog.favorite ? Icons.favorite : Icons.favorite_outline,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
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
            ),
            Stack(
              children: [
                SizedBox(
                  width: sizeWidth,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 300,
                        width: 150,
                        child: ListView.builder(
                          itemCount: dog.photos.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: 100,
                              width: 70,
                              child: InkWell(
                                onTap: () {
                                  print(index);
                                  setState(() {
                                    imageId = index;
                                  });
                                },
                                child: Card(
                                  //color: dog.color,
                                  margin: const EdgeInsetsDirectional.all(5),
                                  child: Image(
                                    image: NetworkImage(
                                      dog.photos[index],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -60,
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      color: dog.color,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          dog.photos[imageId],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'About',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    dog.about,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(70),
                ),
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 90,
                  width: 200,
                  decoration: BoxDecoration(
                    color: dog.color,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(70),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.pets,
                        color: Colors.black,
                        size: 30,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'ADOPT',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: const Icon(
      Icons.menu,
      color: Colors.black,
    ),
    title: RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        text: 'Location',
        style: TextStyle(
          color: Colors.grey,
        ),
        children: [
          TextSpan(
            text: '\n Pécem, Ceará',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    ),
    centerTitle: true,
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 10),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            'https://media-exp1.licdn.com/dms/image/C4D03AQHDemU5xIHApg/profile-displayphoto-shrink_200_200/0/1648121255178?e=1665619200&v=beta&t=L6Pr3O91yxR0jAoYKwMB0-te3wLkVe33xADATpBwIcU',
          ),
        ),
      ),
    ],
  );
}

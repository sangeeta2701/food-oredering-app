import 'package:flutter/material.dart';

Widget categoriesContainer(String image, String name) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(left: 20),
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
          ),
          color: Colors.grey,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Align(
        alignment: Alignment.center,
        child: Text(
          name,
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      )
    ],
  );
}

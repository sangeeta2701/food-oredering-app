import 'package:flutter/material.dart';

Widget bottomContainer(
  String image,
  String price,
  String name,
) {
  return Container(
    height: 250,
    width: 200,
    decoration: BoxDecoration(
      color: Color(0xff3a3e3e),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: 60,
        ),
        ListTile(
          leading: Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          trailing: Text(
            price,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.white,
                size: 18,
              ),
              Icon(
                Icons.star,
                color: Colors.white,
                size: 18,
              ),
              Icon(
                Icons.star,
                color: Colors.white,
                size: 18,
              ),
              Icon(
                Icons.star,
                color: Colors.white,
                size: 18,
              ),
              Icon(
                Icons.star,
                color: Colors.white,
                size: 18,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

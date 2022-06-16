import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Widget button(String name, Color color, Color textColor) {
    return Container(
      height: 45,
      width: 300,
      child: RaisedButton(
        color: color,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.green,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: () {},
        child: Text(
          name,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 50.0,
            ),
            child: Expanded(
              child: Container(
                // height: 200,
                // width: 150,
                child: Center(
                  child: Image.asset(
                    "assets/blogo.PNG",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Welcome to FoodShades ",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: [
                      Text("Order food from our restaurant and"),
                      Text("Make reservation in real- time"),
                    ],
                  ),
                  button('Login', Colors.green, Colors.white),
                  button('SignUp', Colors.white, Colors.green),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

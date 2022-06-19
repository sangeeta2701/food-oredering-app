import 'package:flutter/material.dart';
import 'package:food_ordering/screens/bottom_container.dart';
import 'package:food_ordering/screens/categories_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Color(0xff2b2b2b),
          child: SafeArea(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/bg.jpg"),
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/profile.jpg"),
                  ),
                  accountName: Text("Sangeeta Gupta"),
                  accountEmail: Text("abc123@gmail.com"),
                )
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/profile.jpg"),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Food",
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                filled: true,
                fillColor: Color(0xff3a3e3e),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                categoriesContainer("assets/pizza1.png", "All"),
                categoriesContainer("assets/pizza4.jpg", "Pizza"),
                categoriesContainer("assets/burger.png", "Burger"),
                categoriesContainer("assets/drink.png", "Drinks"),
                categoriesContainer("assets/momos.png", "Momos"),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.count(
              shrinkWrap: false,
              crossAxisCount: 2,
              primary: false,
              childAspectRatio: 0.8,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: [
                bottomContainer("assets/pizza1.png", "\$23", "Pizza"),
                bottomContainer("assets/burger.png", "\$12", "Burger"),
                bottomContainer("assets/mojito.jpg", "\$30", "Mojito"),
                bottomContainer("assets/momos.png", "\$28", "Momos"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foodgo/burger%20view/HamburgerChicken.dart';
import 'package:foodgo/burger%20view/HamburgerVeggie%20.dart';
import 'package:foodgo/burger%20view/cheeseburger.dart';
import 'package:foodgo/burger%20view/friedchicken.dart';
import 'package:foodgo/user%20profile%20page/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Foodgo",
                      style: TextStyle(
                        fontSize: 29,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lobster',
                      ),
                    ),
                    const Spacer(),
                    ClipOval(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>Profile()));
                        },
                        child: Image.asset(
                          "assets/images/profile.png",
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  "Order your favourite food!",
                  style: TextStyle(fontSize: 17),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    // Search bar
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search, color: Colors.black54),
                            const SizedBox(width: 10),
                            Text(
                              "Search",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    // Filter button
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.filter_alt_rounded,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          width: 77,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 10,
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "All",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 3),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          width: 99,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: Text(
                              "Combos",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.4),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 3),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          width: 99,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: Text(
                              "Sliders",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.4),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 3),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          width: 99,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: Text(
                              "Classic",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.3),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CheeseBurger(),));
                        },
                        child: Container(
                          width: 175,
                          height: 220,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(28),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 10,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Center(
                                  child: Image.asset("assets/images/burger1.png"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16, top: 5),
                                child: Text(
                                  "Cheeseburger",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16, top: 2),
                                child: Text(
                                  " Wendy's Burger",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 18,
                                    ),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.deepOrangeAccent,
                                      size: 17,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 5,
                                    ),
                                    child: Text(
                                      "4.9",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 80,
                                    ),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.black,
                                      size: 27,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ), //first
                      const SizedBox(width: 17),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HamburgerVeggie(),));
                        },
                        child: Container(
                          width: 175,
                          height: 220,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(28),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 10,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25,left: 16),
                                child:  Center(child: Image.asset("assets/images/burger2.png")),
                            
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16, top: 5),
                                child: Text(
                                  "Hamburger",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16, top: 2),
                                child: Text(
                                  " Veggie Burger",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 18,
                                    ),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.deepOrangeAccent,
                                      size: 17,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 5,
                                    ),
                                    child: Text(
                                      "4.8",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 80,
                                    ),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.black,
                                      size: 27,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ), //first
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18, left: 15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChickenBurger(),));
                        },
                        child: Container(
                          width: 175,
                          height: 220,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(28),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 10,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Center(
                                  child: Image.asset("assets/images/burger3.png"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16, top: 0),
                                child: Text(
                                  "Hamburger",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16, top: 2),
                                child: Text(
                                  " Chicken Burger",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 18,
                                    ),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.deepOrangeAccent,
                                      size: 17,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 5,
                                    ),
                                    child: Text(
                                      "4.6",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 80,
                                    ),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.black,
                                      size: 27,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top: 18, left: 15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FriedChickenBurger(),));
                        },
                        child: Container(
                          width: 175,
                          height: 220,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(28),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 10,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Center(
                                  child: Image.asset("assets/images/burger4.png"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16, top: 10),
                                child: Text(
                                  "Hamburger",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16, top: 2),
                                child: Text(
                                  " Fried Chicken Burger",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 18,
                                    ),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.deepOrangeAccent,
                                      size: 17,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 5,
                                    ),
                                    child: Text(
                                      "4.5",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 80,
                                    ),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.black,
                                      size: 27,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ), //first //first
                  ],
                ),
              ],
            ),
          ),
        ),
        
  // FAB for center button
  floatingActionButton: FloatingActionButton(
    onPressed: () {
      // action for the center button
    },
    backgroundColor: Colors.redAccent,
    child: Image.asset("assets/images/plus.png"),
    elevation: 4,
  ),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

  // Bottom Navigation Bar
  bottomNavigationBar: BottomAppBar(
    shape: const CircularNotchedRectangle(),
    notchMargin: 8,
    color: Colors.redAccent,
    elevation: 10,
    child: SizedBox(
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
         Image.asset("assets/images/Group.png"),
         Image.asset("assets/images/user.png"),
          const SizedBox(width: 40), // space for FAB
          Image.asset("assets/images/comment.png"),
          Image.asset("assets/images/heart.png"),
        ],
      ),
    ),
  ),
)

      );
  }
}

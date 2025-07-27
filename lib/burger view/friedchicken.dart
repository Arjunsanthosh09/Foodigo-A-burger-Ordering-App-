import 'package:flutter/material.dart';
import 'package:foodgo/order%20pages/orderpage.dart';

class FriedChickenBurger extends StatefulWidget {
  const FriedChickenBurger({Key? key}) : super(key: key);

  @override
  State<FriedChickenBurger> createState() => _FriedChickenBurgerState();
}

class _FriedChickenBurgerState extends State<FriedChickenBurger> {
  double _spicyValue = 0.5; 
  int _quantity = 1; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      // Handle search action
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/friedchicken.png", // Placeholder image, user will add their own
                        height: 250,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Fried Chicken Burger",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 20),
                          Text(" 4.5 - 14 mins"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Indulge in our crispy and savory Fried Chicken Burger, made with a juicy chicken patty, hand-breaded and deep-fried to perfection, served on a warm bun with lettuce, tomato, and a creamy sauce. ",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                    const SizedBox(height: 45),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 17.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Spicy",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Text("Mild"),
                                  Slider(
                                    label: _spicyValue.toString(),
                                    value: _spicyValue,
                                    min: 0.0,
                                    max: 1.0,
                                    divisions: 2,
                                    activeColor: Colors.redAccent,
                                    inactiveColor: Colors.grey,
                                    onChanged: (newValue) {
                                      setState(() {
                                        _spicyValue = newValue;
                                      });
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 1),
                                    child: Text("Hot"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Portion",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.remove, color: Colors.redAccent),
                                      onPressed: () {
                                        setState(() {
                                          if (_quantity > 1) _quantity--;
                                        });
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Text(
                                      "$_quantity",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Container(
                                    width: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.redAccent,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.add, color: Colors.white),
                                      onPressed: () {
                                        setState(() {
                                          _quantity++;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 10,
                    offset: Offset(0, -5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      "\$26.99", // Placeholder price
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle order now action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87, // Button color
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>Orderpage()));
                      },
                      child: Text(
                        "ORDER NOW",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),//hh
            ),//
          ],
        ),
      ),
    );
  }
}
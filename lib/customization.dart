import 'package:flutter/material.dart';
import 'package:foodgo/order%20pages/carddeatils.dart';

class Custom extends StatefulWidget {
  const Custom({super.key});

  @override
  State<Custom> createState() => _CustomState();
}

class _CustomState extends State<Custom> {
  double _spiceLevel = 0.5;
  int _portion = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Row with Back and Search
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.arrow_back, color: Colors.black),
                    const Icon(Icons.search, color: Colors.black),
                  ],
                ),
              ),
          
              // Main Image + Customization UI
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Burger Image
                    Image.asset('assets/images/pngwing 12.png'),
          
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: "Customize ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      "Your Burger to Your Tastes. Ultimate Experience",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 28),
                          const Text(
                            "Spicy",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Slider(
                            value: _spiceLevel,
                            onChanged: (value) {
                              setState(() {
                                _spiceLevel = value;
                              });
                            },
                            activeColor: Colors.redAccent,
                            inactiveColor: Colors.grey.shade300,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Mild", style: TextStyle(color: Colors.green)),
                              Text("Hot", style: TextStyle(color: Colors.red)),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "Portion",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  if (_portion > 1) {
                                    setState(() {
                                      _portion--;
                                    });
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  backgroundColor: Colors.redAccent,
                                  padding: const EdgeInsets.all(10),
                                ),
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                ),
                                child: Text(
                                  '$_portion',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _portion++;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  backgroundColor: Colors.redAccent,
                                  padding: const EdgeInsets.all(10),
                                ),
                                child: const Icon(Icons.add, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Text(
                  "Toppings",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            Image.asset("assets/images/Frame 78.png"),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Text(
                  "Side Options",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Image.asset("assets/images/Frame 79.png"),
              const SizedBox(height: 10,),
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
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Text("Total Price",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "\$16.49", // Placeholder price
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Handle order now action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent, // Button color
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Carddeatils()));
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
      ),
    );
  }
}

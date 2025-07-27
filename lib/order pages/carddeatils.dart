import 'package:flutter/material.dart';
import 'package:foodgo/order%20pages/successmessgae.dart';

class Carddeatils extends StatelessWidget {
  const Carddeatils({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView( // To prevent overflow on smaller screens
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top AppBar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search, color: Colors.black),
                    ),
                  ),
                ],
              ),

              // Order Summary Title
              const Padding(
                padding: EdgeInsets.only(top: 6, left: 23),
                child: Text(
                  "Order Summary",
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Poppins-Regular'),
                ),
              ),
              const SizedBox(height: 20),

              // Order rows
              _buildSummaryRow("Order", "\$16.48"),
              _buildSummaryRow("Taxes", "\$0.3"),
              _buildSummaryRow("Delivery fees", "\$1.5"),

              const SizedBox(height: 20),
              const Divider(
                color: Colors.grey,
                thickness: 0.5,
                indent: 20,
                endIndent: 20,
              ),
              const SizedBox(height: 20),

              // Total
              _buildSummaryRow("Total", "\$18.19", isBold: true),
              _buildSummaryRow("Estimated delivery time:", "30 mins"),

              const SizedBox(height: 30),

              // Payments Method Title
              const Padding(
                padding: EdgeInsets.only(left: 23),
                child: Text(
                  "Payments Method",
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Poppins-Regular'),
                ),
              ),

              const SizedBox(height: 16),

              // Card selection widgets
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: PaymentCards(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSummaryRow(String title, String value, {bool isBold = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 23, top: 10),
          child: Text(
            title,
            style: TextStyle(
              fontSize: isBold ? 19 : 18,
              color: Colors.black,
              fontFamily: 'Poppins-Regular',
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 23, top: 10),
          child: Text(
            value,
            style: TextStyle(
              fontSize: isBold ? 19 : 18,
              color: Colors.black,
              fontFamily: 'Poppins-Regular',
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}

class PaymentCards extends StatelessWidget {
  const PaymentCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PaymentCard(
          logo: 'https://upload.wikimedia.org/wikipedia/commons/0/04/Mastercard-logo.png',
          cardType: 'Credit card',
          cardNumber: '5105 **** **** 0505',
          selected: true,
          bgColor: Color(0xFF2C1C1B),
          textColor: Colors.white,
        ),
        const SizedBox(height: 12),
        const PaymentCard(
          logo: 'https://upload.wikimedia.org/wikipedia/commons/5/5e/Visa_Inc._logo.svg',
          cardType: 'Debit card',
          cardNumber: '3566 **** **** 0505',
          selected: false,
          bgColor: Color(0xFFF5F5F5),
          textColor: Colors.black87,
        ),
        const SizedBox(height: 10),
const Padding(
  padding: EdgeInsets.symmetric(horizontal: 23, vertical: 12),
  child: Text(
    "Secure your cravings with just a tap — choose your card and pay with confidence.",
    style: TextStyle(
      fontSize: 15,
      fontStyle: FontStyle.italic,
      color: Colors.grey,
      fontFamily: 'Poppins-Regular',
    ),
  ),
),
        const Text("Visit Again , Re - Enjoy Your Food",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent,
                fontFamily: 'Poppins-Regular')),
        const SizedBox(height: 40),
        Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Column(
                        children: [
                          Text("Total Price",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "\$18.19", // Placeholder price
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
                              MaterialPageRoute(builder: (context) =>Successmessgae()));
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
      ],
    );
  }
}

class PaymentCard extends StatelessWidget {
  final String logo;
  final String cardType;
  final String cardNumber;
  final bool selected;
  final Color bgColor;
  final Color textColor;

  const PaymentCard({
    super.key,
    required this.logo,
    required this.cardType,
    required this.cardNumber,
    required this.selected,
    required this.bgColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: selected
            ? [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  blurRadius: 6,
                  offset: const Offset(0, 4),
                )
              ]
            : null,
      ),
      child: Row(
        children: [
          Image.network(
            logo,
            height: 36,
            width: 50,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.credit_card),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(cardType,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: textColor)),
                const SizedBox(height: 4),
                Text(cardNumber,
                    style: TextStyle(
                        fontSize: 14, color: textColor.withOpacity(0.7))),
              ],
            ),
          ),
          Icon(
            selected ? Icons.radio_button_checked : Icons.radio_button_off,
            color: selected ? Colors.white : Colors.grey,
          ),
        ],
      ),
    );
  }
}

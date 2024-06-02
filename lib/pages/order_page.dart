import 'package:flutter/material.dart';
import 'package:fruitstoreapp/pages/payment_page.dart';
import 'package:lottie/lottie.dart';

class Orderpage extends StatelessWidget {
  Orderpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Lottie.asset("assets/animation/orderboy.json"),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "It\'s not just the packages we deliver, but the care we put into every delivery.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView.builder(
                    itemCount: obboardingLines.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: const Icon(
                          Icons.check_circle,
                          color: Colors.teal,
                        ),
                        title: Text(
                          obboardingLines[index],
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      );
                    }),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentMethod(),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Center(
                  child: Text(
                    "Order Now",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
    );
  }

  final List<String> obboardingLines = [
    "Experience Speedy Deliveries From Your Door to Anywhere in Minutes",
    "Shop, Order, Relax: Let Us Handle the Heavy Lifting.",
    "Track Your Deliveries in Real-Time: Know Exactly When to Expect Your Package.",
    "A World of Choices at Your Fingertips: Explore Restaurants, Stores, and More.",
    "Secure and Contactless: Your Safety, Our Priority.",
  ];
}

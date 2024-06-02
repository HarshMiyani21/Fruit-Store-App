import 'package:flutter/material.dart';
import 'package:fruitstoreapp/pages/thanks_page.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  String? selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.grey[800],
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            paymentMethod("Master Card", "assets/images/mastercard.png"),
            const SizedBox(
              height: 30,
            ),
            paymentMethod("Paypal", "assets/images/paypal.png"),
            const SizedBox(
              height: 30,
            ),
            paymentMethod("Visa", "assets/images/visa.png"),
            const SizedBox(
              height: 380,
            ),
            GestureDetector(
              onTap: () {
                // Handle the continue button tap with the selected payment method
                if (selectedPaymentMethod != null) {
                  print("Selected Payment Method: $selectedPaymentMethod");
                  // You can navigate or perform other actions here
                } else {
                  print("Please select a payment method");
                }
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ThankYouPage(),
                    ),
                  );
                },
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.amber[600],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget paymentMethod(String title, String iconPath) {
    return InkWell(
      onTap: () {
        // Set the selected payment method
        setState(() {
          selectedPaymentMethod = title;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ListTile(
          title: Text(title),
          leading: SizedBox(
            height: 50,
            width: 50,
            child: Image.asset(iconPath),
          ),
          trailing: selectedPaymentMethod == title
              ? const Icon(Icons.check_circle, color: Colors.green)
              : const Icon(Icons.circle_outlined),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:fruitstoreapp/pages/home_page.dart';
//
// class RegistrationPage extends StatefulWidget {
//   const RegistrationPage({Key? key}) : super(key: key);
//
//   @override
//   _RegistrationPageState createState() => _RegistrationPageState();
// }
//
// class _RegistrationPageState extends State<RegistrationPage> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController phoneNumberController = TextEditingController();
//   final TextEditingController addressController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Registration Page'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextField(
//               controller: nameController,
//               decoration: const InputDecoration(labelText: 'Name'),
//             ),
//             TextField(
//               controller: phoneNumberController,
//               decoration: const InputDecoration(labelText: 'Phone Number'),
//             ),
//             TextField(
//               controller: addressController,
//               decoration: const InputDecoration(labelText: 'Address'),
//             ),
//             TextField(
//               controller: emailController,
//               decoration: const InputDecoration(labelText: 'Email'),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 _navigateToDisplayData(context);
//               },
//               child: const Text('Register'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void _navigateToDisplayData(BuildContext context) {
//     String name = nameController.text;
//     String phone = phoneNumberController.text;
//     String add = addressController.text;
//     String email = emailController.text;
//
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => HomePage(
//           name: name,
//           phoneNumber: phone,
//           address: add,
//           email: email,
//         ),
//       ),
//     );
//   }
//
// }

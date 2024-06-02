import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruitstoreapp/pages/onboarding_screen.dart';
import 'package:fruitstoreapp/pages/profile/profile_menu.dart';
import 'package:fruitstoreapp/pages/profile/profile_pic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  final String name;
  final String phoneNumber;
  final String address;
  final String email;

  const ProfileScreen({
    super.key,
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.email,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {

     XFile? _pickedImage; // Use XFile to store the picked image file

     Future<void> _pickImage() async {
       final ImagePicker _picker = ImagePicker();
       final XFile? pickedImage = await _picker.pickImage(source: ImageSource.gallery);

       if (pickedImage != null) {
         setState(() {
           _pickedImage = pickedImage;
         });
       }
     }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.grey[800],
        ),
        title: Text(
          "Profile",
          style: GoogleFonts.notoSerif(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const ProfilePic(),
            // GestureDetector(
            //   onTap: _pickImage,
            //   child: _pickedImage == null
            //       ? const ProfilePic()
            //       : CircleAvatar(
            //     radius: 60,
            //     backgroundImage: FileImage(File(_pickedImage!.path)),
            //   ),
            // ),
            const SizedBox(height: 20),
             ProfileMenu(
              text: widget.name,
              icon: Icons.person,
            ),
             ProfileMenu(
              text: widget.phoneNumber,
              icon: Icons.phone,
            ),
             ProfileMenu(
              text: widget.address,
              icon: Icons.home_filled,
            ),
             ProfileMenu(
              text: widget.email,
              icon: Icons.email,
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const OnboardingScreen();
                  },
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.red,
                ),
                child: const Text(
                  "Log out",
                  style: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

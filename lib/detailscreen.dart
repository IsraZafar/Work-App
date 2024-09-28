import 'package:ecommerceapp/add.dart';

import 'package:flutter/material.dart';

class Detailscreen extends StatefulWidget {
  const Detailscreen({super.key});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  // Method to navigate to the new screen
  void _navigateToNewScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const Add()), // Replace with your new screen
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Image
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/Top bar (3).png',
                    fit: BoxFit.cover,
                    width: 700,
                  ),
                ),
              ),
              const SizedBox(height: 16), // Space between image and search box

              // Search Box with Icon Inside
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: const Icon(Icons.search), // Icon inside the box
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                ),
              ),
              const SizedBox(height: 16), // Space between search box and image

              // First Category Image with Box Shape
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.grey), // Border color
                ),
                clipBehavior: Clip.hardEdge, // To ensure rounded corners
                child: Image.asset(
                  'assets/images/Category.png',
                  fit: BoxFit.cover,
                  width: 400,
                ),
              ),
              const SizedBox(height: 16), // Space between images

              // Additional Images with Padding
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 8.0), // Small padding between boxes
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.grey), // Border color
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    'assets/images/Unity Dashboard ☺.png',
                    fit: BoxFit.cover,
                    width: 300,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 8.0), // Small padding between boxes
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.grey), // Border color
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    'assets/images/Instagram Shots ✍.png',
                    fit: BoxFit.cover,
                    width: 300,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 8.0), // Small padding between boxes
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.grey), // Border color
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    'assets/images/Cubbbles.png',
                    fit: BoxFit.cover,
                    width: 300,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 8.0), // Small padding between boxes
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.grey), // Border color
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    'assets/images/Ui8 platfrom.png',
                    fit: BoxFit.cover,
                    width: 300,
                  ),
                ),
              ),
              const SizedBox(height: 16), // Space between images

              // Bottom Image with Navigation
              GestureDetector(
                onTap: _navigateToNewScreen,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/Botom Bar.png', // Ensure the path is correct
                    fit: BoxFit.cover,
                    width: 400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:ecommerceapp/profileedidscreen.dart';
import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0), // Padding around the content
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align items to the left
            children: [
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.start, // Align items to start
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context); // Navigate back
                    },
                  ),
                  SizedBox(width: 10), // Space between the icon and the text
                  Text(
                    'Profile',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20), // Space between the header and the images
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: Image.asset(
                    'assets/images/Profile edit.png',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: Image.asset(
                    'assets/images/Task (1).png',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                ),
              ),
              SizedBox(height: 20), // Space between images and status boxes
              buildStatusBox("My Project"),
              SizedBox(height: 10),
              buildStatusBox("Join A Team"),
              SizedBox(height: 10),
              buildStatusBox("Setting"),
              SizedBox(height: 10),
              buildStatusBox("My Task"),
              SizedBox(height: 20), // Space before the bottom image
              // Bottom image with navigation
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ProfileEditScreen(), // Replace with desired screen
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Image.asset(
                    'assets/images/Botom Bar.png', // Ensure this path is correct
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStatusBox(String title) {
    return Container(
      padding: EdgeInsets.all(16.0), // Add padding inside the box
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        borderRadius: BorderRadius.circular(8.0), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Shadow color
            blurRadius: 6.0, // Shadow blur
            offset: Offset(0, 4), // Shadow offset for depth
          ),
        ],
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, color: Colors.black),
      ),
    );
  }
}

import 'package:ecommerceapp/newscreen.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set a clean background color
      body: ListView(
        padding: const EdgeInsets.all(16.0), // Add padding around the content
        children: [
          // First image on the left
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Image.asset(
                'assets/images/Top Bar.png',
                fit: BoxFit.cover,
                width: double.infinity, // Make it responsive
              ),
            ),
          ),
          // Heading
          Text(
            "Let's make a ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(text: "Habits Together "),
                TextSpan(
                  text: "🙌",
                  style: TextStyle(color: Colors.yellow),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12), // Space between text and images
          // Image Containers
          buildImageContainer('assets/images/Card.png'),
          const SizedBox(height: 12),
          buildImageContainer('assets/images/In Progress.png'),
          const SizedBox(height: 12),
          // Bottom Image
          Padding(
            padding: const EdgeInsets.only(bottom: 6.0),
            child: Image.asset(
              'assets/images/Botom Bar.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          const SizedBox(height: 12), // Space before button
          // Navigation Button
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: 21, vertical: 11), // Padding
                textStyle: TextStyle(fontSize: 16), // Text style
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Newscreen()),
                );
              },
              child: Text('New Screen'),
            ),
          ),
          const SizedBox(height: 16), // Space after button
        ],
      ),
    );
  }

  // Helper method to build image container
  Widget buildImageContainer(String imagePath) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(12), // Rounded corners
      ),
      clipBehavior: Clip.antiAlias, // Ensures rounded corners work
    );
  }
}

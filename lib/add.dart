import 'dart:ui'; // Import for the ImageFilter class
import 'package:ecommerceapp/Task.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background content
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/your_background_image.png'), // Background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Blur effect
          BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 10.0, sigmaY: 10.0), // Adjust the blur intensity
            child: Container(
              color: Colors.black
                  .withOpacity(0.5), // Optional: Add a semi-transparent overlay
            ),
          ),
          // Scrollable content
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Image.asset(
                      'assets/images/Top Bar.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Text(
                  "Let's make a ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: "Habits Together "),
                      TextSpan(
                        text: "🙌",
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16), // Space between text and images

                // Additional Images with Padding
                buildImageWithPadding('assets/images/Create Team.png'),
                buildImageWithPadding('assets/images/Create Task.png'),
                buildImageWithPadding('assets/images/Create Project.png'),
                buildImageWithPadding('assets/images/Create Event.png'),
              ],
            ),
          ),
          // Centered Cross Button
          Positioned(
            bottom: 30, // Adjust as needed for padding from the bottom
            left: MediaQuery.of(context).size.width / 2 -
                30, // Center horizontally
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Task()), // Navigate to SecondScreen
                );
              },
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(), // Make it circular
                padding: EdgeInsets.all(20), // Adjust the padding
              ),
              child: Icon(Icons.close, color: Colors.deepPurple), // Cross icon
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImageWithPadding(String imagePath) {
    return Padding(
      padding:
          const EdgeInsets.only(bottom: 8.0), // Small padding between boxes
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.grey), // Border color
        ),
        clipBehavior: Clip.hardEdge,
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          width: 300,
        ),
      ),
    );
  }
}

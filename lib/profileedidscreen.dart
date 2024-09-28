import 'package:ecommerceapp/search.dart';
import 'package:flutter/material.dart';

class ProfileEditScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Profile Edit'), // Optional: Title for the AppBar
      ),
      body: SingleChildScrollView(
        // Make the body scrollable
        padding: const EdgeInsets.symmetric(
            vertical: 10.0), // Reduced vertical padding for the body
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Centered profile edit image
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 5.0), // Space below the first image
                child: Image.asset(
                  'assets/images/Profile edit.png',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
              ),
            ),
            // Space between images
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/Workspace.png', // Replace with your image path
                      width: 300, // Adjust width as needed
                      height: 300, // Adjust height as needed
                    ),
                    Image.asset(
                      'assets/images/Manage.png', // Replace with your image path
                      width: 300, // Adjust width as needed
                      height: 300, // Adjust height as needed
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20), // Space before the button
            ElevatedButton(
              onPressed: () {
                // Navigate to the logout confirmation screen or home screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Search()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple, // Button color
                padding: EdgeInsets.symmetric(
                    horizontal: 50, vertical: 15), // Button padding
              ),
              child: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 18, // Text size
                  color: Colors.white, // Text color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

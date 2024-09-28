import 'package:flutter/material.dart';

class Montlytaskdetail extends StatelessWidget {
  const Montlytaskdetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Team'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Align to start (top)
            children: [
              SizedBox(height: 40), // Add space from the top
              Container(
                width: 120, // Adjust width as needed
                height: 120, // Adjust height as needed
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30, // Adjust size as needed
                          backgroundImage: AssetImage(
                              'assets/images/logo.png'), // Replace with your logo path
                          child: Icon(
                            Icons.camera_alt, // Camera icon for uploading
                            size: 24,
                            color: Colors.grey[700], // Icon color
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: IconButton(
                            icon:
                                Icon(Icons.arrow_forward, color: Colors.white),
                            onPressed: () {
                              // Add your onPressed functionality here
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Uploading info
              SizedBox(height: 10),
              Text(
                "Upload logo file",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Your logo was published.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // Team details
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Team Task",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Team Align",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    // Team Member
                    Text(
                      "Team Member",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Image.asset(
                          'assets/images/Team member (1).png', // Ensure this path is correct
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width * 0.6,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Type:",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Urgent Box
                        buildTypeBox("Private"),
                        SizedBox(width: 10), // Space between boxes
                        // Running Box
                        buildTypeBox("Public"),
                        SizedBox(width: 10), // Space between boxes
                        // Ongoing Box
                        buildTypeBox("Secret"),
                      ],
                    ),
                    // Save Button
                    SizedBox(height: 15), // Space above the button
                    Center(
                      // Center the button
                      child: GestureDetector(
                        onTap: () {
                          // Implement your desired functionality here
                          // For example, show a snackbar or navigate to another screen
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Task Created")),
                          );
                        },
                        child: Container(
                          width: 150, // Set a fixed width for the button
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0), // Adjust padding
                          decoration: BoxDecoration(
                            color: Colors
                                .deepPurple, // Purple color for the button
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          child: Center(
                            child: Text(
                              "Create Task",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16, // Font size
                                color: Colors.black, // Black text color
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build type boxes
  Widget buildTypeBox(String label) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
      ),
    );
  }
}

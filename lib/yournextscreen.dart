import 'package:ecommerceapp/profilescreen.dart';
import 'package:flutter/material.dart';

class YourNextScreen extends StatelessWidget {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context); // Navigate back
                    },
                  ),
                  Text(
                    'Task Status',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                      // Future functionality for the forward arrow
                    },
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: Image.asset(
                    'assets/images/Task.png', // Ensure this path is correct
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildTypeBox("To Do"),
                  SizedBox(width: 10), // Space between boxes
                  buildTypeBox("In Progress"),
                  SizedBox(width: 10), // Space between boxes
                  buildTypeBox("Completed"),
                ],
              ),
              SizedBox(height: 10),
              // Team details section
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Monthly",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    buildStatusBox(
                        "Completed", "180 Tasks completed. 180 Tasks now!"),
                    SizedBox(height: 10),
                    buildStatusBox("In Progress", "2 Tasks Now. 1 Started!"),
                    SizedBox(height: 10),
                    buildStatusBox("To Do", "2 Tasks Now. 1 Uncompleted"),
                  ],
                ),
              ),
              SizedBox(height: 20), // Space before the bottom image
              // Bottom image with navigation
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Profilescreen()), // Replace NextPage with your desired screen
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

  Widget buildStatusBox(String title, String description) {
    return Container(
      padding: EdgeInsets.all(16.0), // Add padding inside the box
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        borderRadius: BorderRadius.circular(8.0), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.grey
                .withOpacity(0.3), // Adjust shadow color for better visibility
            blurRadius: 6.0, // Increase shadow blur
            offset: Offset(0, 4), // Shadow offset for depth
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 4.0), // Space between texts
          Text(
            description,
            style: TextStyle(
              fontSize: 10,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTypeBox(String label) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

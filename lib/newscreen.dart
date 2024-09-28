import 'package:ecommerceapp/montly%20task.dart';

import 'package:flutter/material.dart';

class Newscreen extends StatefulWidget {
  const Newscreen({super.key});

  @override
  State<Newscreen> createState() => _NewscreenState();
}

class _NewscreenState extends State<Newscreen> {
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
                    'assets/images/Top bar (2).png',
                    fit: BoxFit.cover,
                    width: 700,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Date Image
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/Date.png',
                    fit: BoxFit.cover,
                    width: 700,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Days of the week (Calendar)
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7, // 7 days of the week
                  childAspectRatio: 1.0,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 7, // Days of the week
                itemBuilder: (context, index) {
                  return Center(
                    child: Text(
                      ['Sat', 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri'][index],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),

              // Schedule Items in blue boxes
              _buildScheduleBox(
                  '10 AM', 'Wireframe elements 😊', '10 AM to 11 PM'),
              const SizedBox(height: 16),
              _buildScheduleBox('11 AM', 'Mobile Design 😊', '11 AM to 12 PM'),
              const SizedBox(height: 16),
              _buildScheduleBox('12 PM', 'Design Team Call 😊', '1 PM to 3 PM'),

              const SizedBox(height: 16), // Space between images
              // Bottom Image
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                    'assets/images/Botom Bar.png', // Ensure the path is correct
                    fit: BoxFit.cover,
                    width: 400),
              ),
              const SizedBox(height: 16), // Space before button

              // Navigation Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MonthlyTask()),
                  );
                },
                child: Text('New Screen'),
              ),
              const SizedBox(height: 16), // Space after button
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildScheduleBox(String time, String task, String timeRange) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue, // Blue background
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildScheduleItem(time, task),
          const SizedBox(height: 16), // Space before time range
          Text(
            timeRange,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildScheduleItem(String time, String task) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            time,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: task.substring(
                          0, task.length - 2), // Task text without emoji
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    TextSpan(
                      text: task[task.length - 2], // Emoji
                      style: TextStyle(
                          fontSize: 18, color: Colors.yellow), // Yellow emoji
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

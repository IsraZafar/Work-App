import 'package:ecommerceapp/detailscreen.dart';
import 'package:flutter/material.dart';

class MonthlyTask extends StatefulWidget {
  const MonthlyTask({super.key});

  @override
  State<MonthlyTask> createState() => _MonthlyTaskState();
}

class _MonthlyTaskState extends State<MonthlyTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monthly Tasks'),
        actions: [
          IconButton(
            icon: Icon(Icons.add), // "+" icon
            onPressed: () {
              // Navigate to AddTaskScreen on tap
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Detailscreen(),
                ),
              );
            },
          ),
        ],
      ),
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
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 7.0), // Padding for left arrow
                    child: Icon(Icons.arrow_back),
                  ),
                  Text(
                    'Monthly Tasks',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0), // Padding for right arrow
                    child: Icon(Icons.edit),
                  ),
                ],
              ),
              SizedBox(height: 20), // Space between rows
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back), // Left arrow
                  SizedBox(width: 8), // Space between arrow and date
                  Text(
                    'September 12, 2021',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(width: 8), // Space between date and arrow
                  Icon(Icons.arrow_forward), // Right arrow
                ],
              ),

              // Container for oval buttons in a single row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildOvalButton('11', 'Mon'),
                  _buildOvalButton('12', 'Tue'),
                  _buildOvalButton('13', 'Wed'),
                  _buildOvalButton('14', 'Thu'),
                  _buildOvalButton('15', 'Fri'),
                ],
              ),
              SizedBox(height: 20), // Space before the line

              // Thick line (Divider)
              Divider(
                thickness: 3, // Thickness of the line
                color: Colors.grey, // Color of the line
              ),
              SizedBox(height: 20), // Space after the line

              // Calendar Image
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Image.asset(
                    'assets/images/Celandar.png', // Ensure this path is correct
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Image.asset(
                  'assets/images/Botom Bar.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOvalButton(String topText, String bottomText) {
    return GestureDetector(
      // Wrap with GestureDetector to handle tap
      onTap: () {
        // Navigate to a new screen on tap
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detailscreen(), // Passing data to new screen
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(4), // Smaller margin for tighter spacing
        padding: EdgeInsets.symmetric(
            vertical: 6, horizontal: 12), // Height and width of the button
        decoration: BoxDecoration(
          color: Colors.blue, // Button color
          borderRadius: BorderRadius.circular(30), // Oval shape
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              topText,
              style: TextStyle(
                  color: Colors.white, fontSize: 16), // Adjusted font size
            ),
            SizedBox(height: 2), // Space between texts
            Text(
              bottomText,
              style: TextStyle(
                  color: Colors.white, fontSize: 12), // Adjusted font size
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MonthlyTask(),
  ));
}

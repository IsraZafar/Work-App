import 'package:ecommerceapp/yournextscreen.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
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
                        'Chat',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 8), // Space between date and arrow
                      Icon(Icons.arrow_forward), // Right arrow
                    ],
                  ),
                  const SizedBox(
                      height: 16), // Space between header and search box

                  // Search Box with Icon Inside wrapped in a Container
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        prefixIcon:
                            const Icon(Icons.search), // Icon inside the box
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 19.0),
                      ),
                    ),
                  ),

                  // Images with padding
                  ...[
                    'assets/images/Jenny.png',
                    'assets/images/Team align.png',
                    'assets/images/Alax.png',
                    'assets/images/Jafor.png',
                  ].map((image) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: 8.0), // Padding between images
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            image, // Ensure this path is correct
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width * 0.7,
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
          // Bottom Bar with Navigator
          GestureDetector(
            onTap: () {
              // Navigate to the desired screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      YourNextScreen(), // Replace with your target screen
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
    );
  }
}

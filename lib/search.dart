import 'package:ecommerceapp/language.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  void _navigateToKeyboardScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => KeyboardScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Search',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Search Box
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Dashboard',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 19.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Dashboard Section
              Text(
                'Dashboard',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white,
                      ),
                      child: Text("Task", style: TextStyle(fontSize: 16)),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white,
                      ),
                      child: Text("File", style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Images
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.grey),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    'assets/images/Unity Dashboard ☺.png',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.grey),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    'assets/images/Instagram Shots ✍.png',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // iOS Keyboard Image with Navigation
              GestureDetector(
                onTap: _navigateToKeyboardScreen,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.grey),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      'assets/images/iOS keyboard.png',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    ),
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

class KeyboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Setting',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Permissions and Settings
              Column(
                children: [
                  _buildSettingOption(
                    context,
                    'Permission',
                    true,
                    true, // Set this to true to indicate it's the "Permission" option
                  ),
                  SizedBox(height: 10),
                  _buildSettingOption(
                      context, 'Push Notification', true, false),
                  SizedBox(height: 10),
                  _buildSettingOption(context, 'Dark Mode', true, false),
                  SizedBox(height: 10),
                  _buildSettingOption(context, 'Security', false, false),
                  SizedBox(height: 10),
                  _buildSettingOption(context, 'Help', false, false),
                  SizedBox(height: 10),
                  _buildSettingOption(context, 'Language', false, false),
                  SizedBox(height: 10),
                  _buildSettingOption(
                      context, 'About Application', false, false),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingOption(
      BuildContext context, String title, bool showToggle, bool isPermission) {
    return GestureDetector(
      onTap: () {
        if (isPermission) {
          // Navigate to Permission screen
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    PermissionScreen()), // Replace with your actual Permission screen widget
          );
        }
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: isPermission
              ? Colors.purple
              : Colors.white, // Change color if it's Permission
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 4.0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: isPermission
                      ? Colors.white
                      : Colors.black), // Change text color for Permission
            ),
            if (showToggle) Icon(Icons.toggle_on, size: 24, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}

class PermissionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Edit Profile',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20), // Space below the title

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Centered profile edit image
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 5.0), // Space below the image
                        child: Image.asset(
                          'assets/images/Profile Photo.png',
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align items to the left
                        children: [
                          // Other widgets...

                          SizedBox(height: 10),
                          // Team details
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // Align items to the left
                              children: [
                                Text(
                                  "Name",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Navigate to the new screen
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            Language(), // Replace with your screen
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.9, // Set a wider width
                                    padding: EdgeInsets.all(
                                        16.0), // Padding inside the box
                                    decoration: BoxDecoration(
                                      color: Colors
                                          .white, // Background color of the box
                                      borderRadius: BorderRadius.circular(
                                          8.0), // Rounded corners
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.6),
                                          blurRadius: 4.0,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      "Alvart Ainstain",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                // Email details
                                Text(
                                  "Email",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.9, // Set a wider width
                                  padding: EdgeInsets.all(
                                      16.0), // Padding inside the box
                                  decoration: BoxDecoration(
                                    color: Colors
                                        .white, // Background color of the box
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Rounded corners
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.4),
                                        blurRadius: 4.0,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    "alvart.ainstain@gmail.com",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                // User Name details
                                Text(
                                  "User Name",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.9, // Set a wider width
                                  padding: EdgeInsets.all(
                                      16.0), // Padding inside the box
                                  decoration: BoxDecoration(
                                    color: Colors
                                        .white, // Background color of the box
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Rounded corners
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.4),
                                        blurRadius: 4.0,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    "@Alvartainstain",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                // Number details
                                Text(
                                  "Number",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.9, // Set a wider width
                                  padding: EdgeInsets.all(
                                      16.0), // Padding inside the box
                                  decoration: BoxDecoration(
                                    color: Colors
                                        .white, // Background color of the box
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Rounded corners
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.4),
                                        blurRadius: 4.0,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    "012345678910",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
}

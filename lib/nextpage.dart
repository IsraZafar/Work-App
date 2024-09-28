import 'package:ecommerceapp/signuppage.dart';
import 'package:flutter/material.dart';

class Nextpage extends StatefulWidget {
  const Nextpage({super.key});

  @override
  State<Nextpage> createState() => _NextpageState();
}

class _NextpageState extends State<Nextpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        // Make the body scrollable
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Sign in",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const Center(
                child: Text(
                  "WELCOME BACK",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "Please Enter Your Email And Password",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "For a Login",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.withOpacity(0.4),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Enter email or username",
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.withOpacity(0.4),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Enter Password",
                    border: InputBorder.none,
                  ),
                  obscureText: true, // Hide password input
                ),
              ),
              const SizedBox(height: 12),
              InkWell(
                // Wrap the Container with InkWell for tap detection
                onTap: () {
                  // Handle sign-in action here
                  print("Sign in tapped");
                },
                child: Container(
                  height: 50,
                  width: 400,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black,
                  ),
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              // Add the image if needed
              Image(
                image: AssetImage("assets/images/Sign Up.png"),
                width: 200, // Adjust the width as needed
                height: 200, // Adjust the height as needed
              ),
              const SizedBox(height: 12), // Space before the signup text
              InkWell(
                onTap: () {
                  // Navigate to the signup page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signuppage()),
                  );
                },
                child: const Text(
                  "Not registered? Sign up",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue, // Make it look clickable
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 50), // Optional: Add some space below
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:ecommerceapp/homescreen.dart';
import 'package:flutter/material.dart';
// Import the HomeScreen widget

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Sign up",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const Center(
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "Please Enter Your Information And Password",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "For Create an Account",
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
                onTap: () {
                  // Navigate to HomeScreen when signed up
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Homescreen()),
                  );
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
                    "Sign up",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Image(
                image: AssetImage("assets/images/Sign Up.png"),
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 12),
              InkWell(
                onTap: () {
                  // Navigate to the login page (if you have one)
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Signuppage()),
                  );
                },
                child: const Text(
                  "Not registered? Sign in",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

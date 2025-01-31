import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    var devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // App Icon
              Icon(
                Icons.local_car_wash, // Replace with your app icon
                size: 100,
                color: Colors.yellow,
              ),
              SizedBox(height: 20), // Space between icon and app name
              // App Name
              const Text(
                'Car Wash App',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10), // Space between app name and login text
              // Login Text
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30), // Space before the input field
              // Mobile Number Input Field
              const TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              const SizedBox(
                  height: 20), // Space between input field and button
              // Send OTP Button
              ElevatedButton(
                onPressed: () {
                  // Add your OTP sending logic here
                  print("OTP Sent!");
                },
                style: ElevatedButton.styleFrom(
                  iconColor: Colors.yellow, // Background color
                  shadowColor: Colors.black, // Text color
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 15), // Padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Rounded corners
                  ),
                  elevation: 5, // Shadow effect
                ),
                child: Text(
                  'Send OTP',
                  style: TextStyle(
                    fontSize: 18, // Font size
                    fontWeight: FontWeight.bold, // Font weight
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

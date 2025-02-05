import 'dart:io';

import 'package:carcare/view/OtpScreen.dart';
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
    var deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(deviceHeight * .02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // App Icon
              Icon(
                Icons.local_car_wash, // Replace with your app icon
                size: deviceHeight * .3,
                color: Colors.yellow,
              ),
              SizedBox(height: deviceHeight * .05),
              // App Name
              Text(
                'Car Wash App',
                style: TextStyle(
                  fontSize: devicewidth * .05,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                  height: deviceHeight *
                      .05), // Space between app name and login text
              // Login Text
              Text(
                'Login',
                style: TextStyle(
                  fontSize: deviceHeight * .03,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                  height: deviceHeight * .03), // Space before the input field
              // Mobile Number Input Field
              SizedBox(
                width: devicewidth * .05,
                height: deviceHeight * .02,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    labelText: 'Mobile Number',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),
              ),
              SizedBox(
                  height: deviceHeight *
                      .03), // Space between input field and button
              // Send OTP Button
              ElevatedButton(
                onPressed: () {
                  // Add your OTP sending logic here
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Otpscreen();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  iconColor: Colors.yellow, // Background color
                  shadowColor: Colors.black, // Text color
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 15), // Padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Rounded corners
                  ),
                  elevation: 5,
                ),
                child: Text(
                  'Send OTP',
                  style: TextStyle(
                    fontSize: deviceHeight * .03, // Font size
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

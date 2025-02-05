// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Otpscreen extends StatefulWidget {
  const Otpscreen({super.key});

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
  @override
  Widget build(BuildContext context) {
    // Get the size of the screen
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.07),
              Text(
                'Verification \nCode',
                style: TextStyle(
                  fontSize: screenHeight * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Text(
                'We have sent a verification code to your\n phone number',
                style: TextStyle(
                  fontSize: screenHeight * 0.02,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
              Center(
                child: Text(
                  "1111111111",
                  style: TextStyle(
                    fontSize: screenHeight * 0.022, // Responsive font size
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(6, (index) {
                  return SizedBox(
                    width: screenWidth * 0.12, // Responsive width
                    height: screenHeight * 0.08, // Responsive height
                    child: const TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20),),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        hintText: '',
                      ),
                      // keyboardType: TextInputType.number,
                      // maxLength: 1, // Limit to one character
                    ),
                  );
                }),
              ),
              SizedBox(
                  height: screenHeight * 0.03), // Space before resend button
              // Resend OTP Button
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Don't recieve OTP? ",
                      style: TextStyle(
                        fontSize: screenHeight * 0.018,
                        color: Colors.grey,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Add your resend OTP logic here
                      },
                      child: Text(
                        'Resend OTP',
                        style: TextStyle(
                          fontSize:
                              screenHeight * 0.018, // Responsive font size
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Add your OTP sending logic here
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Otpscreen();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow, // Text color
                        padding: const EdgeInsets.symmetric(
                            horizontal: 55, vertical: 15), // Padding
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(30), // Rounded corners
                        ),
                      ),
                      child: Text(
                        'Send OTP',
                        style: TextStyle(
                          fontSize: screenHeight * .03, // Font size
                          fontWeight: FontWeight.bold, // Font weight
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * .01,),
                    ElevatedButton(
                      onPressed: () {
                        // Add your cancel logic here
                      },
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          fontSize: screenHeight * 0.018, // Responsive font size
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
}

// ignore_for_file: file_names
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
              Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                  Icons.local_car_wash,
                  size: deviceHeight * 0.14,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: deviceHeight * .05),
              Text(
                'Car Wash App',
                style: TextStyle(
                  fontSize: devicewidth * .05,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: deviceHeight * .05),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: deviceHeight * .03,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: deviceHeight * .003),
                  Text(
                    'Enter phone number to send one time \npassword',
                    style: TextStyle(
                      fontSize: deviceHeight * .02,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: deviceHeight * .03),
              SizedBox(
                width: devicewidth * .5,
                height: deviceHeight * .07,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    labelText: 'Mobile Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                  ),
                ),
              ),
              SizedBox(height: deviceHeight * .03),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const Otpscreen();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  padding:
                       EdgeInsets.symmetric(horizontal: devicewidth * .17, vertical: 13),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Send OTP',
                  style: TextStyle(
                    fontSize: deviceHeight * .025,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
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

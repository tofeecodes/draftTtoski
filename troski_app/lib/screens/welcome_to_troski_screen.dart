// ignore_for_file: prefer_const_constructors, unnecessary_import, use_key_in_widget_constructors, library_private_types_in_public_api, unused_import
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/homepage.dart';
import 'package:troski_test/screens/phone_number_screen.dart';

class WelcomePage extends StatefulWidget {
  @override
  _welcomePageScreenState createState() => _welcomePageScreenState();
}


class _welcomePageScreenState extends State<WelcomePage> {
  @override

void initState() {
    super.initState();
    navigateToNextScreen();
  }

void navigateToNextScreen() {
    // Wait for 5 seconds and then navigate to PhoneNumberScreen
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
              'Welcome to TROSKI',
              textAlign:TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              //textAlign: TextAlign.justify,
            ),
            SizedBox(height:30),
            buildWelcomeImage(),
              
            ]
          ),
      ),
      ),
    );
  }
  
  Widget buildWelcomeImage() {
    return Image.asset(
  'assets/main_troski_icon.jpg',  // Replace with your image path
  width: 500,  // Set the desired width
  height: 200, // Set the desired height
  fit: BoxFit.contain, // Apply appropriate fit option
);
  }
  
  
  ImageProvider _getImageProvider() {
    try {
      return AssetImage('assets/main_troski_icon.jpg');
    } catch (e) {
      print('Error loading image: $e');
      return NetworkImage('troski_test\lib\Resources\fallback_tro_icon.svg');
    }
  }
}

      
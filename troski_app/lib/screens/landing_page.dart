// ignore_for_file: prefer_const_constructors, unnecessary_import, use_key_in_widget_constructors, library_private_types_in_public_api, unused_import
import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/homepage.dart';
import 'package:troski_test/screens/phone_number_screen.dart';
import 'package:troski_test/screens/troski_explained_screen1.dart';
import 'package:troski_test/utils/prefs.dart';

class LandingPage extends StatefulWidget {
  @override
  _landingPageScreenState createState() => _landingPageScreenState();
}

class _landingPageScreenState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  void navigateToNextScreen() async {
    // Wait for 5 seconds and then navigate to PhoneNumberScreen
    var loggedIn = await UserSessionManager().isUserLoggedIn;
    if (loggedIn) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      Future.delayed(Duration(seconds: 5), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => TroskiExplainedScreen1()),
        );
      });
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildTroskiImage(),
              SizedBox(height: 20),
              Text(
                "TROSKI",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTroskiImage() {
    return Image.asset(
      'assets/main_troski_icon.jpg', // Replace with your image path
      width: 500, // Set the desired width
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

/*body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient:LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffffffff),
                      Color(0xffffffff),
                      Color(0xffffffff),
                      Color(0xffffffff),
                    ],
                  )
                ),
              ),
            ],
          ),
        ),
      ),
      );
  }
}*/
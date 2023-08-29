// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:troski_test/Location_lists.dart/homepage_locations.dart';
import 'package:troski_test/screens/delete_account_screen.dart';
import 'package:troski_test/screens/landing_page.dart';
import 'package:troski_test/settings_and_account_list_screens/accounts_elements.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/activity_screen.dart';
import 'package:troski_test/screens/dansoman_bus_listscreen.dart';
import 'package:troski_test/screens/email_screen.dart';
import 'package:troski_test/screens/home_address_screen.dart';
import 'package:troski_test/screens/homepage.dart';
import 'package:troski_test/screens/settings_screen.dart';
import 'package:troski_test/screens/work_address_screen.dart';
import 'package:troski_test/screens/account_screen.dart';

import 'package:flutter/cupertino.dart';


class AcceptHomeAddressScreen extends StatefulWidget {
  @override
  _acceptHomeAddressScreenState createState() => _acceptHomeAddressScreenState();
}

class _acceptHomeAddressScreenState extends State<AcceptHomeAddressScreen> {
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
        MaterialPageRoute(builder: (context) => AccountScreen()),
      );
    });
  }

  Widget build (BuildContext context) {
    return 
    MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, 
          children: [
        Column(
          children: [ 

            Text(
            "Congratulations!",
            //textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.green,
                    fontSize: 22,
                    fontWeight: FontWeight.normal,
                  ),
          ),

          SizedBox(height: 20),

            Image.asset("assets/check.jpg",
          fit: BoxFit.cover),

          SizedBox(height: 30),

          Text(
            "Your home address has been updated!",
            textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.normal,
                  ),
          ),

          

          
        ],
      ),
          ]
      ),
      ),
      ),
    );
  }
}
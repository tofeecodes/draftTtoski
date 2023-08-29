// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:troski_test/screens/trip_details_page.dart';

class AcceptComplaintPage extends StatefulWidget {
  @override
  _acceptComplaintPageScreenState createState() => _acceptComplaintPageScreenState();
}

class _acceptComplaintPageScreenState extends State<AcceptComplaintPage> {
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
        MaterialPageRoute(builder: (context) => TripDetailsPage()),
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
            "Complaint Received!",
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
            "Sorry for any inconvenience caused. \n"
            "We will address your issue immediately",
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

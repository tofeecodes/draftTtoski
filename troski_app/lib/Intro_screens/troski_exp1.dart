// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TroskiExp1 extends StatelessWidget {
  

  @override
  
  Widget build (BuildContext context) {
    return 
    Scaffold(
      body:Stack(
        children: [
        Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/dark_urban_vehicle.jpg'),
            fit: BoxFit.cover,
          ),
      ),
        ),



      Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Ride easy with real-time updates",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Experience comfort as tou ride with Troski",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
            ]
          ),
      ),
        ],
    ),
    );
        
          
    }
  }
  Widget buildTroskiImageWhite() {
    return Image.asset(
  'assets/white_troski_icon.jpg',  // Replace with your image path
  width: 500,  // Set the desired width
  height: 200, // Set the desired height
  fit: BoxFit.contain, // Apply appropriate fit option
);
  }

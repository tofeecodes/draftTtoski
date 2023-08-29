// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TroskiExp3 extends StatelessWidget {
  

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
                  "Simple to use",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "This app takes your bus riding to a whole new level.\n"
                  "Ooyaloo?",
                  softWrap: true,
                  textAlign: TextAlign.center,
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
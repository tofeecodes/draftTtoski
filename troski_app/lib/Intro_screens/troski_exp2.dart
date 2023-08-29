// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TroskiExp2 extends StatelessWidget {
  

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
                  "Say Hello to adequate planning",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Plan your trips with ease as you have the necessary \n"
                  "info to make better decisions",
                  textAlign: TextAlign.center,
                  softWrap: true,
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

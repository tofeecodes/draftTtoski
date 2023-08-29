// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:troski_test/screens/landing_page.dart';

class ComplaintList extends StatelessWidget {
  final Icon;
  final String faq;
  

  ComplaintList({
    Key? key,
    required this.Icon,
    required this.faq,
    }) : super(key:key);

  @override
  Widget build(BuildContext context) { 
    return Padding(
      padding: const EdgeInsets.all(30),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LandingPage()),
          );
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          margin: EdgeInsets.all(2),
          decoration: BoxDecoration(border: null),
          child: Row(
            children: [
                Icon(
                  Icons.receipt,
                size: 20),
                
              
                SizedBox(width: 30),
              
                Text(
                  faq,
                  style: TextStyle(
                                  fontFamily: 'Poppins_Regular',
                                  color: Colors.black,
                                  fontSize: 20,
                                  //fontWeight: FontWeight.w500,
                                ),
                ),
            ],
          ),
        ),
      )
    );
    
  }
}
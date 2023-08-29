// ignore_for_file: unused_import, library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:troski_test/Location_lists.dart/bus_list_screen.dart';
import 'package:troski_test/Location_lists.dart/homepage_locations.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/activity_screen.dart';
import 'package:troski_test/screens/choose_location_page.dart';
import 'package:troski_test/screens/dansoman_bus_listscreen.dart';
import 'package:troski_test/screens/landing_page.dart';
import 'package:troski_test/screens/momo_pay1_screen.dart';
import 'package:troski_test/screens/end_ride_screen.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({Key? key}) : super(key: key);

@override

  _ticketPageScreenState createState() => _ticketPageScreenState();
}
class _ticketPageScreenState extends State<TicketPage> {

  void navigateToEndRideScreen(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => EndRideScreen()));
}

  Widget buildPrintBtn(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical:25),
    width: double.infinity,
    child: ElevatedButton (
      onPressed: () {
        navigateToEndRideScreen(context);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(15.0)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      child: Text(
        'End Ride',
        style: TextStyle(
          fontFamily: 'Poppins',
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
    ),
  );
}


  Widget TicketBusImage() {
    return Image.asset(
  'assets/ticketbus_image.jpg',  // Replace with your image path
  width: 250,  
  height: 200, 
  fit: BoxFit.contain, // Apply appropriate fit option
);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffffffff),
                      Color(0xffffffff),
                      Color(0xffffffff),
                      Color(0xffffffff),
                    ],
                  ),
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 50,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.close),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Payment Receipt",
                        //textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      SizedBox(height: 40),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border:  Border.all(width:1.0, 
                          color:Colors.grey),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height:5),
                            Padding(
                              padding: const EdgeInsets.only(top:14.0, bottom:10.0),
                              child: Text(
                                "Ticket #12654358",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                  ),
                              ),
                            ),
                            
                            Divider(
                              color: Colors.grey,
                            ),

                            SizedBox(height: 8),

                            TicketBusImage(),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20),
                                    Text(
                                      "Dansoman Bus",
                                      style: TextStyle(
                                      fontFamily: 'Poppins-Regular',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    ),
                          
                                    Text(
                                      "GB ${2010} ${20}",
                                      style: TextStyle(
                                      fontFamily: 'Poppins-Light',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    ),
                                  ],
                                ),
                          
                                Text(
                                      "GHC ${10.00}",
                                      style: TextStyle(
                                      fontFamily: 'Poppins-SemiBold',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    ),
                                
                            ],
                            ),
                          ),
                          SizedBox(height:8),

                          Padding(
                            padding: const EdgeInsets.only(left:20.0, right:20, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Booking Date:",
                                  style: TextStyle(
                                      fontFamily: 'Poppins-Light',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                ),
                                SizedBox(width:3),
                          
                                Text(
                                  "${23}-${02}-${2023}",
                                  style: TextStyle(
                                      fontFamily: 'Poppins-Regular',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                ),
                              ],
                          
                              ),
                          ),
                            SizedBox(height:10),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Divider(
                                height: 3.0,
                              color: Colors.grey,
                              ),
                            ),

                            SizedBox(height: 10),

                            Padding(
                              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Passenger",
                                        style: TextStyle(
                                      fontFamily: 'Poppins-Light',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                        ),
                                        
                                        Text(
                                          "Abena Kosua",
                                          style: TextStyle(
                                      fontFamily: 'Poppins-Regular',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                        ),
                                    ],
                            
                                  ),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "No. of seats",
                                        style: TextStyle(
                                      fontFamily: 'Poppins-Light',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                        ),

                                        Text(
                                          "${1}",
                                          style: TextStyle(
                                      fontFamily: 'Poppins-Regular',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                        ),
                                    ],
                            
                                  ),
                            
                              ],),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left:20.0, right:20.0, top:20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Time",
                                        style: TextStyle(
                                            fontFamily: 'Poppins-Light',
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                          ),
                                      ),
                            
                                      Text(
                                        "${7} : ${45} AM",
                                        style: TextStyle(
                                            fontFamily: 'Poppins-Regular',
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Stopping Point",
                                      style: TextStyle(
                                              fontFamily: 'Poppins-Light',
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w300,
                                            ),
                                    ),
                            
                                    Text(
                                            "Dansoman Control",
                                            style: TextStyle(
                                        fontFamily: 'Poppins-Regular',
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                          ),
                                  ],
                                ),
                            
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Bus Number",
                                      style: TextStyle(
                                              fontFamily: 'Poppins-Light',
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w300,
                                            ),
                                    ),
                            
                                    Text(
                                            "GB ${2010} ${20}",
                                            style: TextStyle(
                                        fontFamily: 'Poppins-Regular',
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                          ),                                  
                                  ],
                                )
                              ],),
                            )
                            
                          ],
                        ),
                      ),

                      SizedBox(height: 20),

                      buildPrintBtn(context),
                    ]
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
 }
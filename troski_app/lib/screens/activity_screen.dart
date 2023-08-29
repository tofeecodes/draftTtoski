// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:troski_test/Location_lists.dart/bus_list_screen.dart';
import 'package:troski_test/Location_lists.dart/homepage_locations.dart';
import 'package:troski_test/Location_lists.dart/ride_history_list_screen.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/account_screen.dart';
import 'package:troski_test/screens/choose_location_page.dart';
import 'package:troski_test/screens/dansoman_bus_listscreen.dart';
import 'package:troski_test/screens/homepage.dart';
import 'package:troski_test/screens/landing_page.dart';
import 'package:troski_test/screens/momo_pay2_screen.dart';
import 'package:troski_test/screens/trip_details_page.dart';
import 'package:troski_test/screens/ticket_screen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({Key? key}) : super(key: key);

@override

  _activityScreenState createState() => _activityScreenState();
}

class _activityScreenState extends State<ActivityScreen> { 

  late GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  int _currentIndex = 0;

void _onNavItemTapped(int index) {
  switch (index) {
    case 0:
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
      break;
    case 1:
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ActivityScreen()),
      );
      break;
    case 2:
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AccountScreen()),
      );
      break;
  }
}

  void navigateToTripDetailsPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => TripDetailsPage()));
}
@override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onNavItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.auto_graph), label: 'Activity'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Activity",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xffFF8300),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
                  
                        SizedBox(height:30),
                        GestureDetector(
                          onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TripDetailsPage()),
                      );} ,
                          child: Container(
                            padding: EdgeInsets.all(40),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:  Border.all(width:1.0, 
                              color:Colors.black),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2), // Shadow color
                              blurRadius: 4, // Spread radius
                              offset: Offset(1,1), // Offset of the shadow
                            ),
                          ],
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 500.0,
                                  height: 160.0,
                                  decoration: BoxDecoration(
                                             
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child:  ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
        },
        initialCameraPosition: CameraPosition(
          target: LatLng(37.7749, -122.4194),
          zoom: 12.0,
        ),
      ),
                                  ),
                                ),
                          
                                 SizedBox(height: 10),
                                Text(
                                  "Lapaz",
                                  style: TextStyle(
                                          fontFamily: 'Poppins-Regular',
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                ),
                          
                                SizedBox(height: 10),
                          
                                Row(
                                  children: [
                                    Text(
                                      "Jan ${25}",
                                      style: TextStyle(
                                          fontFamily: 'Poppins-Light',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    ),
                          
                                     SizedBox(width:5),
                          
                                    Icon(
                                      Icons.circle,
                                      color: Colors.black,
                                      size: 5.0,
                                    ),
                          
                          
                                    Text(
                                      "${9}:${36} AM",
                                      style: TextStyle(
                                          fontFamily: 'Poppins-Light',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    ),
                                  ],
                                ),
                          
                                SizedBox(height: 5),
                          
                                Text(
                                  "GHc${4.50}",
                                  style: TextStyle(
                                          fontFamily: 'Poppins-Light',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                        ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height:25),
                   
          GestureDetector(
            onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TripDetailsPage()),
                      );} ,
            child: RideHistList(
              busimage: Image.asset('assets/bus_icon_img.jpg',
                  width: 40, height: 40),
              station: "Dansoman Bus",
              bookDate: "Jan${25}",
              bookTime: "${9}:${36} AM",
              amountPaid: "GHc${4.50}",       
                ),
          ),

                Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
                       child: Divider(color: Color.fromARGB(255, 216, 214, 214),),
                     ),

          GestureDetector(
            onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TripDetailsPage()),
                      );} ,
            child: RideHistList(
              busimage: Image.asset('assets/bus_icon_img.jpg',
                  width: 40, height: 40),
              station: "Dansoman Bus",
              bookDate: "Jan${25}",
              bookTime: "${9}:${36} AM",
              amountPaid: "GHc${4.50}",       
                ),
          ),
          
          Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
                       child: Divider(color: Color.fromARGB(255, 216, 214, 214),),
                     ),

          GestureDetector(
            onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TripDetailsPage()),
                      );} ,
            child: RideHistList(
              busimage: Image.asset('assets/bus_icon_img.jpg',
                  width: 40, height: 40),
              station: "Dansoman Bus",
              bookDate: "Jan${25}",
              bookTime: "${9}:${36} AM",
              amountPaid: "GHc${4.50}",       
                ),
          ),
          
          Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
                       child: Divider(color: Color.fromARGB(255, 216, 214, 214),),
                     ),
          
          GestureDetector(
            onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TripDetailsPage()),
                      );} ,
            child: RideHistList(
              busimage: Image.asset('assets/bus_icon_img.jpg',
                  width: 40, height: 40),
              station: "Dansoman Bus",
              bookDate: "Jan${25}",
              bookTime: "${9}:${36} AM",
              amountPaid: "GHc${4.50}",       
                ),
          )
                      ],
                    ),
                  ),
                ),
            
          
        );
    
          
  }
}
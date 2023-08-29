// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:troski_test/Location_lists.dart/homepage_locations.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/account_screen.dart';
import 'package:troski_test/screens/activity_screen.dart';
import 'package:troski_test/screens/choose_location_page.dart';
import 'package:troski_test/screens/dansoman_bus_listscreen.dart';
import 'package:troski_test/screens/landing_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<HomePage> {

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
  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onNavItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.auto_graph), label: 'Activity'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
      body: Stack(
        children:[

        GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
        },
        initialCameraPosition: CameraPosition(
          target: LatLng(37.7749, -122.4194),
          zoom: 12.0,
        ),
      ),

         SafeArea(
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      // Shadow color
                      blurRadius: 4,
                      // Spread radius
                      offset: Offset(1, 1), // Offset of the shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.grey,
                    ),
                    Text(
                      "Okponglo",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        "30 buses nearby",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 400),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70.0),
                      topRight: Radius.circular(70.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        // Shadow color
                        blurRadius: 8,
                        // Spread radius
                        offset: Offset(1, 1), // Offset of the shadow
                      ),
                    ],
                  ),
                  //Search Box
                  child: Center(
                    child: Column(children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChooseLocationPage()),
                          );
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFFF0E0),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            margin:
                                EdgeInsets.only(top: 10, left: 30, right: 30),
                            padding: EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 12.0),
                            child: Row(children: [
                              Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Where to ?",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                            ])),
                      ),
                      SizedBox(height: 20),
                      Expanded(
                        child: ListView(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DBusListScreen()),
                                );
                              },
                              child: ListTile(
                                title: HomePageLocList(
                                  icon: Icons.history,
                                  busStopName: "Kofi ne Ama Bus stop",
                                  busStopLocation: "Dansoman",
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Divider(
                                color: Color.fromARGB(255, 216, 214, 214),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DBusListScreen()),
                                );
                              },
                              child: ListTile(
                                title: HomePageLocList(
                                  icon: Icons.history,
                                  busStopName: "Control Bus stop",
                                  busStopLocation: "Dansoman",
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Divider(
                                color: Color.fromARGB(255, 216, 214, 214),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DBusListScreen()),
                                );
                              },
                              child: ListTile(
                                title: HomePageLocList(
                                  icon: Icons.history,
                                  busStopName: "Okponglo Bus stop",
                                  busStopLocation: "Legon",
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Divider(
                                color: Color.fromARGB(255, 216, 214, 214),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DBusListScreen()),
                                );
                              },
                              child: ListTile(
                                title: HomePageLocList(
                                  icon: Icons.history,
                                  busStopName: "Lapaz",
                                  busStopLocation: "Accra",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
        ]
      ),
    );
  }
}
/*child: ElevatedButton (
      onPressed: () {
        navigateToSignUpPage(context);
      },
      child: Row
      children: [
        Icon(
          Icons.search
        )
        Text(
        'Where to',
        style: TextStyle(
          fontFamily: 'Poppins',
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
      Colors.black),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.all(15.0)),
         shape:MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)),
      ),
      ),
    ),
    */

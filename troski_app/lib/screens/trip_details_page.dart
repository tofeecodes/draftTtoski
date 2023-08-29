// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:troski_test/Location_lists.dart/bus_list_screen.dart';
import 'package:troski_test/Location_lists.dart/homepage_locations.dart';
import 'package:troski_test/Location_lists.dart/ride_history_list_screen.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/choose_location_page.dart';
import 'package:troski_test/screens/dansoman_bus_listscreen.dart';
import 'package:troski_test/screens/landing_page.dart';
import 'package:troski_test/screens/momo_pay2_screen.dart';
import 'package:troski_test/screens/ticket_screen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TripDetailsPage extends StatefulWidget {
  const TripDetailsPage({Key? key}) : super(key: key);

@override

  _tripDetailsPageScreenState createState() => _tripDetailsPageScreenState();
}

class _tripDetailsPageScreenState extends State<TripDetailsPage> { 

  late GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  /*void navigateToMoreInfoPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => MoreInfoPage()));
}
*/
@override
 Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                // child: SingleChildScrollView(
                //   physics: AlwaysScrollableScrollPhysics(),
                //   padding: EdgeInsets.symmetric(
                //     horizontal: 25,
                //     vertical: 50,
                //   ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back_rounded),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          //SizedBox(width: 44),
                          Text(
                            "Trip Details",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xffFF8300),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                              //width: 500.0,
                              height: 170.0,
                              decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
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

                      SizedBox(height: 20),

                      Padding(
                        padding: const EdgeInsets.only(left:30.0, right:30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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

                                SizedBox(width:10),

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

                      Padding(
                        padding: const EdgeInsets.only(left:30.0, right:20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //Starting point row
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      size: 20.00,
                                    ),
                      
                                    SizedBox(width: 20),
                      
                                    Text(
                                      "Okponglo Bus Stop",
                                      style: TextStyle(
                                            fontFamily: 'Poppins-Light',
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ],
                                ),
                                //Route bar
                                VerticalDivider(
                                  width: 2.0,
                                ),
                                //Destination Point row
                                Row(
                                  children: [
                                    Icon(
                                      Icons.square,
                                      size: 20.00,
                                    ),
                      
                                    SizedBox(width: 20),
                      
                                    Text(
                                      "Dansoman Control",
                                      style: TextStyle(
                                            fontFamily: 'Poppins-Light',
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                ],),
                              ],
                            ),

                            Container(
                              //margin: EdgeInsets.only(),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xffF2F3F1),),
                                child: Text(
                                  "Ticket",
                                  style: TextStyle(
                                            fontFamily: 'Poppins-Light',
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                          ),
                                ),
                            ) 
                        ],),
                      ),

                      SizedBox(height: 10),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color:Color(0xffF2F3F1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0),
              ),  
              ),
              //Search Box
              child: Column(
                children: [ 
                  SizedBox(height: 30),
                Expanded(
                  child: ListView(
                    children: [
                      GestureDetector(
                    onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DBusListScreen()),
              );
            },
                       child: Container(
                        decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                         child: ListTile(
                          leading: Image.asset('assets/lost_keys.jpg',
                          fit: BoxFit.contain,),
                          
                                              title: Text(
                                                "Find Lost Item",
                                                style: TextStyle(
                                    fontFamily: 'Poppins-Regular',
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  ),
            
                                  subtitle: Text(
                                    "We can help you \n"
                                    "report things you lost in the bus",
                                    style: TextStyle(
                                    fontFamily: 'Poppins-Light',
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  ),
            
            
                         ),
                       ),
                      ),
                      
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
                       child: Divider(color: Color.fromARGB(255, 216, 214, 214),),
                     ),
            
                     GestureDetector(
                    onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DBusListScreen()),
              );
            },
                     child: Container(
                      decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                       child: ListTile(
                       leading: Image.asset('assets/caution_wheel.jpg',
                            fit: BoxFit.contain,),
                            
                                                title: Text(
                                                  "Find Lost Item",
                                                  style: TextStyle(
                                      fontFamily: 'Poppins-Regular',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    ),
                                 
                                    subtitle: Text(
                                      "We can help you \n"
                                      "report things you lost in the bus",
                                      style: TextStyle(
                                      fontFamily: 'Poppins-Light',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    ),
                       ),
                     ),
                     ),
            
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
                       child: Divider(color: Color.fromARGB(255, 216, 214, 214),),
                     ), 
            
                     GestureDetector(
                    onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DBusListScreen()),
              );
            },
                     child: Container(
                      decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                       child: ListTile(
                       leading: Image.asset('assets/help_icon.jpg',
                            fit: BoxFit.contain,),
                            
                                                title: Text(
                                                  "Find Lost Item",
                                                  style: TextStyle(
                                      fontFamily: 'Poppins-Regular',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    ),
                                 
                                    subtitle: Text(
                                      "We can help you \n"
                                      "report things you lost in the bus",
                                      style: TextStyle(
                                      fontFamily: 'Poppins-Light',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    ),
                       ),
                     ),
                     ),
                     
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
                       child: Divider(color: Color.fromARGB(255, 216, 214, 214),),
                     ),
            
                     GestureDetector(
                    onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DBusListScreen()),
              );
            },
                     child: Container(
                      decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                       child: ListTile(
                       leading: Image.asset('assets/lost_keys.jpg',
                            fit: BoxFit.contain,),
                            
                                                title: Text(
                                                  "Find Lost Item",
                                                  style: TextStyle(
                                      fontFamily: 'Poppins-Regular',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    ),
                                 
                                    subtitle: Text(
                                      "We can help you \n"
                                      "report things you lost in the bus",
                                      style: TextStyle(
                                      fontFamily: 'Poppins-Light',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    ),
                       ),
                     ),
                     ), 
                    ],
                  ),
                ),
                ]
              ),
            ),
          ),

                    ]
                  ),
                ),
              //),
            ]
          ),
        ),
      );
 }

}


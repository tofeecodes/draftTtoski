// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:troski_test/Location_lists.dart/bus_list_screen.dart';
import 'package:troski_test/Location_lists.dart/homepage_locations.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/choose_location_page.dart';
import 'package:troski_test/screens/landing_page.dart';
import 'package:troski_test/screens/payment_method_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DBusListScreen extends StatefulWidget {
  const DBusListScreen({Key? key}) : super(key: key);

  @override
   _dbusListScreenState createState() => _dbusListScreenState();
}

class _dbusListScreenState extends State<DBusListScreen> {

   late GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      /*bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.auto_graph), label: 'Activity'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        ),
        */
      body:  Stack(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 20,),

              GestureDetector(
                      onTap: () {
    Navigator.pop(context);
  },
              child: Icon(
                Icons.arrow_back,
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 120),
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0), 
                decoration: BoxDecoration(
                  color: Colors.white,
        borderRadius: BorderRadius.circular(30),
                  boxShadow: [
    BoxShadow(
      color: Colors.black.withOpacity(0.2), // Shadow color
      blurRadius: 4, // Spread radius
      offset: Offset(1,1), // Offset of the shadow
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
                  Text(
                    "30 buses nearby",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.normal
                    ),
                  ),

                  
                ],
              ),

        ),
            ],
          ),

        SizedBox(height: 400),
          Expanded(
            
            child: Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color:Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70.0),
                topRight: Radius.circular(70.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Shadow color
                  blurRadius: 8, // Spread radius
                  offset: Offset(1,1), // Offset of the shadow
                   ),
                   ],
              ),
              //Search Box
              child: Center(
                child: Column(
                  children: [ 
                 Expanded(
                    child: ListView(
                      children: [
                       GestureDetector(
                      onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PaymentMethodPage() ),
    );
  },
                      child: ListTile(
                       title: BusList(
                        image: Image.asset('assets/bus_icon_img.jpg',
                        width: 50,
                        height: 30),
                        //Icons.history,
                        busName: "Dansoman Bus",
                        busDistance: "${1} min away",
                        busFare: "GHS ${10.00}"
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
      MaterialPageRoute(builder: (context) => PaymentMethodPage()),
    );
  },
                       child: ListTile(
                       title: BusList(
                       image: Image.asset('assets/bus_icon_img.jpg',
                        width: 50,
                        height: 30),
                        busName: "Dansoman Bus",
                        busDistance: "${30} min away",
                        busFare: "GHS ${10.00}"
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
      MaterialPageRoute(builder: (context) => LandingPage()),
    );
  },
                       child: ListTile(
                       title: BusList(
                       image: Image.asset('assets/bus_icon_img.jpg',
                        width: 50,
                        height: 30),
                        busName: "Lapaz Bus",
                        busDistance: "${50} min away",
                        busFare: "GHS ${7.00}"
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
      MaterialPageRoute(builder: (context) => PaymentMethodPage()),
    );
  },
                       child: ListTile(
                       title: BusList(
                        image: Image.asset('assets/bus_icon_img.jpg',
                        width: 50,
                        height: 30),
                        busName: "Dansoman Bus",
                        busDistance: "${50} min away",
                        busFare: "GHS ${10.00}" 
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
      MaterialPageRoute(builder: (context) => PaymentMethodPage()),
    );
  },
                       child: ListTile(
                       title: BusList(
                        image: Image.asset('assets/bus_icon_img.jpg',
                        width: 50,
                        height: 30),
                        busName: "Dansoman Bus",
                        busDistance: "${50} min away",
                        busFare: "GHS ${10.00}" 
                       ),
                        ),
                       ),

                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 20.0),
                         child: Divider(color: Color.fromARGB(255, 216, 214, 214),),
                       ),  
                       
                  
                
                      ],
                    ),
                  )
                  ],
                  ),
              ),
        
                ),

              ),
         ]
          ),
         
               ),
               ],
      )
              
               
               
         
      
      
        );
        
     
  }



  }

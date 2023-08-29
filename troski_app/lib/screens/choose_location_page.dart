// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:troski_test/Location_lists.dart/homepage_locations.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/dansoman_bus_listscreen.dart';
import 'package:troski_test/screens/homepage.dart';

class ChooseLocationPage extends StatelessWidget {
  const ChooseLocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
      children: [
        Container(
        height: 280,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 4,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                GestureDetector(
                      onTap: () {
    Navigator.pop(
      context);
  },
                child: Icon(Icons.close),
                ),
              ],
            ),
            SizedBox(height: 7),
            Row(
              children: [
                SizedBox(width: 44),
                Text(
                  "Choose a place",
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
            SizedBox(height: 10),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.circle),
                    SizedBox(height: 12),
                    Icon(Icons.route),
                    SizedBox(height: 12),
                    Icon(Icons.square),
                  ],
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    children: [
                      buildStartLocation(),
                      SizedBox(height: 30),
                      buildDestination(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

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
                         child: ListTile(
                       title: HomePageLocList(
                        icon: Icons.history,
                        busStopName: "Kofi ne Ama Bus stop",
                        busStopLocation: "Dansoman",
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
                       child: ListTile(
                       title: HomePageLocList(
                        icon: Icons.history,
                        busStopName: "Control Bus stop",
                        busStopLocation: "Dansoman",
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
                       child: ListTile(
                       title: HomePageLocList(
                        icon: Icons.history,
                        busStopName: "Okponglo Bus stop",
                        busStopLocation: "Legon",
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
                       child: ListTile(
                       title: HomePageLocList(
                        icon: Icons.history,
                        busStopName: "Tema Station",
                        busStopLocation: "Accra",
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

  Widget buildStartLocation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          //margin: EdgeInsets.symmetric(horizontal: ),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffFFF0E0),
            borderRadius: BorderRadius.circular(8),
          ),
          height: 50,
          //width: 300,
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 5, bottom: 5, left: 2),
              /*prefixIcon: Icon(
                Icons.person,
                color: Colors.black,
              ),*/
              hintText: 'Okponglo Bus Stop',
              hintStyle: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black38,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDestination() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xffFF8300),
              width: 1.0,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          height: 50,
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 5, bottom: 5, left: 2),
              /*prefixIcon: Icon(
                Icons.person,
                color: Colors.black,
              ),*/
              hintText: 'Dansoman Control',
              hintStyle: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black38,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

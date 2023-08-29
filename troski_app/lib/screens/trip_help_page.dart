// ignore_for_file: unused_import, library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:troski_test/Complaint_screens/complaint_details_page.dart';
import 'package:troski_test/Complaint_screens/complaint_list.dart';
import 'package:troski_test/Location_lists.dart/bus_list_screen.dart';
import 'package:troski_test/Location_lists.dart/homepage_locations.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/activity_screen.dart';
import 'package:troski_test/screens/choose_location_page.dart';
import 'package:troski_test/screens/dansoman_bus_listscreen.dart';
import 'package:troski_test/screens/landing_page.dart';
import 'package:troski_test/screens/momo_pay1_screen.dart';

class TripHelpPage extends StatefulWidget {
  const TripHelpPage({Key? key}) : super(key: key);

@override

  _tripHelpPageScreenState createState() => _tripHelpPageScreenState();
}
class _tripHelpPageScreenState extends State<TripHelpPage> {

  void navigateToActivityScreen(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => ActivityScreen()));
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
                      SizedBox(height: 5),
                      Text(
                        "Help",
                        //textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                      ),

                      SizedBox(height: 30),

                      GestureDetector(
                          onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ComplaintDetailsPage()),
                      );} ,
                          child:ComplaintList(
                        Icon: Icon, 
                        faq: "I was involved in an accident"
                        ),
                      ),

                        GestureDetector(
                          onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ComplaintDetailsPage()),
                      );} ,
                          child:ComplaintList(
                        Icon: Icon, 
                        faq: "The vehicle was different"
                        ),
                        ),

                        GestureDetector(
                          onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ComplaintDetailsPage()),
                      );} ,
                          child:ComplaintList(
                        Icon: Icon, 
                        faq: "The car was not in good shape"
                        ),
                        ),

                        GestureDetector(
                          onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ComplaintDetailsPage()),
                      );} ,
                          child:ComplaintList(
                        Icon: Icon, 
                        faq: "I was robbed"
                        ),
                        ),

                        GestureDetector(
                          onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ComplaintDetailsPage()),
                      );} ,
                          child:ComplaintList(
                        Icon: Icon, 
                        faq: "Other"
                        ),
                        ),
                    ]
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
      );
  }
  }
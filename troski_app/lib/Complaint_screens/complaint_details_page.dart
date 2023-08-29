// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_import

//import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:troski_test/Complaint_screens/accept_complaint_page.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/landing_page.dart';
import 'package:troski_test/screens/ride_easy_page.dart';

void main() => runApp(const MyApp());

class ComplaintDetailsPage extends StatefulWidget {
  const ComplaintDetailsPage({super.key});
  // const ComplaintDetailsPage({super.key, required this.detail});
  // final String detail;
  @override
  _complaintDetailsPageScreenState createState() => _complaintDetailsPageScreenState();
}
  class _complaintDetailsPageScreenState extends State<ComplaintDetailsPage> {


    void navigateToAcceptComplaintPage(BuildContext context)
{
  Navigator.push(context,
    MaterialPageRoute(builder: (context)=>AcceptComplaintPage()));
}


    Widget buildSubmitComplaintBtn() {
  return Container(
    padding: EdgeInsets.symmetric(vertical:25),
    width: double.infinity,
    child: ElevatedButton (
      onPressed: () {
        navigateToAcceptComplaintPage(context);
      },
      child: Text(
        'Submit',
        style: TextStyle(
          fontFamily: 'Poppins',
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold
        )
        ,),
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
  );
}



    

    Widget buildComplaintBox() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width:2.0,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2)
            )
          ]
        ),
        height: 300,
       
        child: TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.black87
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
          ),
        ),
      ),
      

    ],
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
                    colors:[
                      Color(0xffffffff),
                      Color(0xffffffff),
                      Color(0xffffffff),
                      Color(0xffffffff),

                    ]
                  )
                ),
                child: SingleChildScrollView(
                  physics:AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 50
                  ),
                  
                  child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  <Widget>[
                     Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                       // ignore: prefer_const_literals_to_create_immutables
                       children: [
                        Center(
                          child:
                         Text(
                          'Details',
                          //textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xffFF8300),
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                          ),
                    ),
                        ),
                       ],
                     ),
                     SizedBox(height: 40),
                    //Alignment.center,
                    // buildTroskiImage2(),
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "We are concerned about you",
                           textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Please let us know what exactly is the problem",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal
                      ,)
                    ),
                     SizedBox(height: 45),
                    buildComplaintBox(),
                    SizedBox(height: 100),
                    buildSubmitComplaintBtn(),
                  ],
                  ),
                ),
              ),
            ],
        ),
        ),
      ),
    );
  }
  }

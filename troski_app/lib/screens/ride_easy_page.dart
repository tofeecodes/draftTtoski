// ignore_for_file: prefer_const_constructors, unnecessary_import, use_key_in_widget_constructors, library_private_types_in_public_api, unused_import
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/homepage.dart';
import 'package:troski_test/screens/troski_explained_screen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:troski_test/screens/welcome_to_troski_screen.dart';

class RideEasyPage extends StatefulWidget {
  @override
  _rideEasyPageScreenState createState() => _rideEasyPageScreenState();
}


class _rideEasyPageScreenState extends State<RideEasyPage> {
  @override

Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildRideEasyImage(),
              Text(
              "Troski",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Ride easy with real-time updeates",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),
                Text(
                  "Allow Troski push notifications to receive trip status, driver \n"
                  "updates, and promotional offers. You can change this anytime\n"
                  "in settings.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
          ),
          SizedBox(height: 100),
          buildRideEasyNextBtn(context),
            ]
          ),
      ),
      ),
    );
  }
  
  Widget buildRideEasyImage() {
    return Image.asset(
  'assets/ride_easy_icon.jpg',  // Replace with your image path
  width: 500,  // Set the desired width
  height: 200, // Set the desired height
  fit: BoxFit.contain, // Apply appropriate fit option
);
  }

  void navigateToWelcomePage(BuildContext context)
{
  Navigator.push(context,
    MaterialPageRoute(builder: (context)=>WelcomePage()));
}

  
  
  Widget buildRideEasyNextBtn(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25, horizontal: 50),
    width: double.infinity,
    child: ElevatedButton(
      
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return CupertinoAlertDialog( // Change AlertDialog to CupertinoAlertDialog
              title: Icon(Icons.notifications), //Text('Popup Modal'),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '“Troski” Would Like to Send You Notifications',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Notifications may include alerts, sounds, and icon badges. These can be configured in settings.',
                    style: TextStyle(fontSize: 14, fontFamily: 'Poppins'),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CupertinoButton( // Replace ElevatedButton with CupertinoButton
                        onPressed: () {
                          navigateToWelcomePage(context);
                          // Handle "Don't Allow" option
                          //Navigator.of(context).pop();
                          // Perform necessary actions for "Don't Allow"
                        },
                        child: Text('Don\'t Allow'),
                        padding: EdgeInsets.zero, // Add zero padding for CupertinoButton
                        minSize: 0, // Add minimum size for CupertinoButton
                      ),
                      CupertinoButton( // Replace ElevatedButton with CupertinoButton
                        onPressed: () {
                          navigateToWelcomePage(context);
                          // Handle "Allow" option
                          //Navigator.of(context).pop();
                          // Perform necessary actions for "Allow"
                        },
                        child: Text('Allow'),
                        padding: EdgeInsets.zero, // Add zero padding for CupertinoButton
                        minSize: 0, // Add minimum size for CupertinoButton
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Text(
        'Next',
        style: TextStyle(
          fontFamily: 'Poppins',
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.all(15.0),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    ),
  );
}

 void navigateToTroskiExplainedScreen1(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TroskiExplainedScreen1()),
    );

  ImageProvider _getImageProvider() {
    try {
      return AssetImage('assets/ride_easy_icon.jpg');
    } catch (e) {
      print('Error loading image: $e');
      return NetworkImage('troski_test\lib\Resources\fallback_tro_icon.svg');
    }
  }
}
}


      /*body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient:LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffffffff),
                      Color(0xffffffff),
                      Color(0xffffffff),
                      Color(0xffffffff),
                    ],
                  )
                ),
              ),
            ],
          ),
        ),
      ),
      );
  }
}*/

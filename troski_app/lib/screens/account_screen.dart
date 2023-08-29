// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field

import 'package:flutter/material.dart';
import 'package:troski_test/Location_lists.dart/homepage_locations.dart';
import 'package:troski_test/screens/delete_account_screen.dart';
import 'package:troski_test/screens/landing_page.dart';
import 'package:troski_test/settings_and_account_list_screens/accounts_elements.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/activity_screen.dart';
import 'package:troski_test/screens/dansoman_bus_listscreen.dart';
import 'package:troski_test/screens/email_screen.dart';
import 'package:troski_test/screens/home_address_screen.dart';
import 'package:troski_test/screens/homepage.dart';
import 'package:troski_test/screens/settings_screen.dart';
import 'package:troski_test/screens/work_address_screen.dart';
import 'package:flutter/cupertino.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

   @override
   _accountScreenState createState() => _accountScreenState();
}

class _accountScreenState extends State<AccountScreen> {

  


  // ignore: prefer_final_fields
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
          BottomNavigationBarItem(icon: Icon(Icons.auto_graph), label: 'Activity'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children:[ Container(
          height: 280,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.black,
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
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.close),
                            ),
                ],
              ),
              SizedBox(height: 20),
              ],
          ),
          ),
          //Profile Name
          Row(
            children: [
              Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/profile_pic.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),

          Column(
            children: [
              Text("Victoria Emenike",
              style: TextStyle(
                                    fontFamily: 'Poppins-Regular',
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
              ),

              SizedBox(height: 2),

              Text("+233 50 469 0320",
              style: TextStyle(
                                    fontFamily: 'Poppins-Light',
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  ),
            ],
          ),
            ],
          ),
          ]
        ),

        SizedBox(height: 20),

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("Your Email",
          style: TextStyle(
                                      fontFamily: 'Poppins-Regular',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
          ),
        ),

        SizedBox(height: 5),

        GestureDetector(
                          onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EmailScreen()),
                      );} ,
                          child:AccountElements(
          titleIcon: Icon(Icons.email),
          optionName: "victoriaemenike2001@gmail.com",
          moreIcon: Icon(Icons.arrow_forward_ios),
        ),
        ),

        Divider(color: Color.fromARGB(255, 216, 214, 214),),

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("Favourite Locations",
          style: TextStyle(
                                      fontFamily: 'Poppins-Regular',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
          ),
        ),
        SizedBox(height: 5),

          GestureDetector(
                          onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeAddressScreen()),
                      );} ,
                          child:AccountElements(
          titleIcon: Icon(Icons.home_filled),
          optionName: "Add home address",
          moreIcon: Icon(Icons.arrow_forward_ios),
        ),
          ),
        
         GestureDetector(
                          onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WorkAddressScreen()),
                      );} ,
                          child:AccountElements(
          titleIcon: Icon(Icons.work),
          optionName: "Add work address",
          moreIcon: Icon(Icons.arrow_forward_ios),
        ),
         ),

        //Divider
        Divider(color: Color.fromARGB(255, 216, 214, 214),),

        AccountElements(
          titleIcon: Icon(Icons.language),
          optionName: "Language",
          moreIcon: Icon(Icons.arrow_forward_ios),
        ),

        //Divider(color: Color.fromARGB(255, 216, 214, 214),),

        GestureDetector(
                          onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SettingsScreen()),
                      );} ,
                          child:AccountElements(
          titleIcon: Icon(Icons.settings),
          optionName: "Settings",
          moreIcon: Icon(Icons.arrow_forward_ios),
        ),
        ),

        Divider(color: Color.fromARGB(255, 216, 214, 214),),

        GestureDetector(
                          onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return CupertinoAlertDialog( // Change AlertDialog to CupertinoAlertDialog
              title: Icon(Icons.logout), //Text('Popup Modal'),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Are you sure you want to log out?',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CupertinoButton( // Replace ElevatedButton with CupertinoButton
                        onPressed: () {
                          Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AccountScreen()),
                          );
                          // Handle "Don't Allow" option
                          //Navigator.of(context).pop();
                          // Perform necessary actions for "Don't Allow"
                        },
                        child: Text('No'),
                        padding: EdgeInsets.zero, // Add zero padding for CupertinoButton
                        minSize: 0, // Add minimum size for CupertinoButton
                      ),
                      CupertinoButton( // Replace ElevatedButton with CupertinoButton
                        onPressed: () {
                          Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LandingPage()),
                          );
                          // Handle "Allow" option
                          //Navigator.of(context).pop();
                          // Perform necessary actions for "Allow"
                        },
                        child: Text('Yes'),
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
          child: AccountElements(
            titleIcon: Icon(Icons.logout_rounded),
            optionName: "Logout",
            moreIcon: Icon(Icons.arrow_forward_ios),
          ),
        ),

        //Divider(color: Color.fromARGB(255, 216, 214, 214),),

        GestureDetector(
                          onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DeleteAccountScreen()),
                      );} ,
                          child:AccountElements(
          titleIcon: Icon(Icons.delete),
          optionName: "Delete account",
          moreIcon: Icon(Icons.arrow_forward_ios),
        ),
        ),

      ],
      ),
      );
  }
}
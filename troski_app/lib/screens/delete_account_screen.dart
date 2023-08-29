// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field

import 'package:flutter/material.dart';
import 'package:troski_test/Location_lists.dart/homepage_locations.dart';
import 'package:troski_test/delete_account_elements/del_acc_list.dart';
import 'package:troski_test/screens/landing_page.dart';
import 'package:troski_test/settings_and_account_list_screens/accounts_elements.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/activity_screen.dart';
import 'package:troski_test/screens/dansoman_bus_listscreen.dart';
import 'package:troski_test/screens/homepage.dart';

class DeleteAccountScreen extends StatefulWidget {
  const DeleteAccountScreen({Key? key}) : super(key: key);

   @override
   _deleteAccountScreenState createState() => _deleteAccountScreenState();
}

class _deleteAccountScreenState extends State<DeleteAccountScreen> {


  void deleteAccount() async {
  Future.delayed(Duration(seconds: 5), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LandingPage()),
        );
      });
  }


  Widget buildDelAccBtn(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical:25),
    width: double.infinity,
    child: ElevatedButton(
      
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Container( // Change AlertDialog to CupertinoAlertDialog
              padding: EdgeInsets.all(20),
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

                  child: Center(
                    child: Column(
                      children: [
                        Image.asset('assets/delete_acc_image.jpg',
                        width: 258,
                        height: 262,
                        ),

                        Text("Account successfully deleted",
                        style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontSize: 16,
                ),
                ),

                SizedBox(height: 2),

                Text("Sad to see you go",
                        style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontSize: 16,
                ),
                ),
                      ],
                    ),

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
      
 bool isChecked = false;


    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                        SizedBox(height: 50),
                        Row(
                          children: [
                            //SizedBox(width: 20),
                            Text(
                              "Delete Account",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 35),
      
               DelAccList(
                isChecked: isChecked, 
                reason: "I am no longer using my account."),

                DelAccList(
                isChecked: isChecked, 
                reason: "The service is too expensive"), 

                DelAccList(
                isChecked: isChecked, 
                reason: "I want to change my phone number."),

                DelAccList(
                isChecked: isChecked, 
                reason: "I don't know how to use the app"),

                DelAccList(
                isChecked: isChecked, 
                reason: "App is not availabe in my city."),

                DelAccList(
                isChecked: isChecked, 
                reason: "Other"), 


                SizedBox(height: 50),

                buildDelAccBtn(context),
        ]
        ),
      ),
    );
  }
}


// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field

import 'package:flutter/material.dart';
import 'package:troski_test/Location_lists.dart/homepage_locations.dart';
import 'package:troski_test/settings_and_account_list_screens/accounts_elements.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/activity_screen.dart';
import 'package:troski_test/screens/dansoman_bus_listscreen.dart';
import 'package:troski_test/screens/homepage.dart';
import 'package:troski_test/screens/accept_work_address_screen.dart';

class WorkAddressScreen extends StatefulWidget {
  const WorkAddressScreen({Key? key}) : super(key: key);

   @override
   _workAddressScreenState createState() => _workAddressScreenState();
}

class _workAddressScreenState extends State<WorkAddressScreen> {

TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }


  Widget buildWorkTextField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Your Work Address',
          style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),

        //Icon(Icons.close, color: Colors.black),
        SizedBox(height: 20),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 2.0,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            obscureText: false,
            style: TextStyle(fontFamily: 'Poppins', color: Colors.black87),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.gps_fixed, color: Colors.black),
              suffixIcon: IconButton(
                icon: Icon(Icons.close, color: Colors.black),
                onPressed: () {
            // Clear the text field when the button is pressed
            setState(() {
              _textEditingController.clear();
            });
          }, 
                ),
            ),
          ),
        ),
      ],
    );
  }


  Widget buildUpdateBtn(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical:25),
    width: double.infinity,
    child: ElevatedButton (
      onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AcceptWorkAddressScreen()),
                          );
                              },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(15.0)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      child: Text(
        'Add',
        style: TextStyle(
          fontFamily: 'Poppins',
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        SizedBox(height: 15),

        
        GestureDetector(
        onTap: () {
                                Navigator.pop(context);
                              },
    child: Icon(Icons.close),
    ),
    

    SizedBox(height: 20),
    
    Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          SizedBox(height: 15),
    
          buildWorkTextField(),
    
          SizedBox(height: 8),
    
          
    
                      SizedBox(height: 30),
    
                      buildUpdateBtn(context),
        ],
      ),
    ),

            
      ],
      ),
    );
}
}

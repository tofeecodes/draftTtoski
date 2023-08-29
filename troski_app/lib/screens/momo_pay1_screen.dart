// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/landing_page.dart';
import 'package:troski_test/screens/momo_pay2_screen.dart';

class MomoPay1Screen extends StatefulWidget {
  const MomoPay1Screen({Key? key}) : super(key: key);

  @override
  State<MomoPay1Screen> createState() => _MomoPay1ScreenState();
}

class _MomoPay1ScreenState extends State<MomoPay1Screen> {
  String? selectedNetwork;
  List<String> momoNetworksList = ["MTN", "Vodafone", "AirtelTigo"];

  Widget buildMomoNumber() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Enter your Momo number',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 10),
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
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2),
              )
            ],
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.number,
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.phone_android_rounded, color: Colors.black),
              hintText: 'xxx xxx xxxx',
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

  void navigateToMomoPay2(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => MomoPay2Screen()));
}
  
  Widget buildNextBtn(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical:25),
    width: double.infinity,
    child: ElevatedButton (
      onPressed: () {
        navigateToMomoPay2(context);
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
        'Next',
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
                    horizontal: 25,
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
                      SizedBox(height: 15),
                      Row(
                        children: [
                          //SizedBox(width: 44),
                          Text(
                            "Mobile Money Payment",
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
                      SizedBox(height: 45),
                      Row(
                        children: [
                          //const SizedBox(width: 44),
                          Image.asset(
                            'assets/progress_bar1.jpg',
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          //SizedBox(width: 35),
                          Text(
                            "Deliver",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 45),
                      Row(
                        children: [
                          Text(
                            'Choose Mobile money network',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
           
          

          
           
    
           
  Row(
  children: [
    Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top:8.0, left:0.0, right: 0.0),
        child: Container(
width:2,
          padding: const EdgeInsets.only(left: 16, right: 16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: DropdownButton<String>(
            hint: Text("Select mobile network"),
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 20,
            // Remove isExpanded property
            dropdownColor: Colors.white,
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.underline,
              decorationColor: Color(0xffFF8300),
              decorationStyle: TextDecorationStyle.solid,
            ),
            value: selectedNetwork,
            onChanged: (newValue) {
              setState(() {
                selectedNetwork = newValue;
              });
            },
            items: momoNetworksList.map((valueItem) {
              return DropdownMenuItem<String>(
                value: valueItem,
                child: Text(valueItem),
              );
            }).toList(),
          ),
        ),
      ),
    ),
  ],
),


          SizedBox(height: 45),
                      buildMomoNumber(),
                      SizedBox(height: 50),
                      buildNextBtn(context),
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
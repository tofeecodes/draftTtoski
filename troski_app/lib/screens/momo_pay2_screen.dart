// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/landing_page.dart';
import 'package:troski_test/screens/ticket_screen.dart';

class MomoPay2Screen extends StatefulWidget {
  const MomoPay2Screen({Key? key}) : super(key: key);

  @override
  State<MomoPay2Screen> createState() => _MomoPay2ScreenState();
}

class _MomoPay2ScreenState extends State<MomoPay2Screen> { 

  void navigateToTicketPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => TicketPage()));
}
  

  Widget buildNextBtn(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical:25),
    width: double.infinity,
    child: ElevatedButton (
      onPressed: () {
        TicketPage();
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
                            'assets/progress_bar2.jpg',
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          //SizedBox(width: 35),
                          Text(
                            "Payment Instructions",
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
                      SizedBox(height: 100),

                      Text(
                        "Follow the steps below to get it done:",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height:20),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0, right: 8.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Text('* Dial *170#',style: TextStyle(
                            fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 16,
                          ),),
                          const SizedBox(height:5),
                          Text('* Select 1 to Transfer Money',style: TextStyle(
                            fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 16,
                          ),),
                          const SizedBox(height:5),Text('* Put in 1 for Momo user',style: TextStyle(
                            fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 16,
                          ),),
                          const SizedBox(height:5),Text('* Type in the number 0XXXXXXXXX (John Smith)',style: TextStyle(
                            fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 16,
                          ),),
                          const SizedBox(height:5),Text('* Repeat the number to confirm.',style: TextStyle(
                            fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 16,
                          ),),
                          const SizedBox(height:5),Text('* Type in the amount you are to pay with a 50 pessewass charge. (GHS 7.50)',style: TextStyle(
                            fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 16,
                          ),),
                          const SizedBox(height:5),Text('* Use the reference "Troski Ride" with a "_" and your name. Eg: Troski Ride-Ama Banku',style: TextStyle(
                            fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 16,
                          ),),
                          const SizedBox(height:5),Text('* Type in your MoMo PIN.',style: TextStyle(
                            fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 16,
                          ),),
                          const SizedBox(height:5),Text('* After a successful payment, you will receive a notification.',style: TextStyle(
                            fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 16,
                          ),),
                          const SizedBox(height:5),],),
                      ),
          
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


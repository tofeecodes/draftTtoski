// ignore_for_file: prefer_const_constructors, unnecessary_import, use_key_in_widget_constructors, library_private_types_in_public_api, unused_import
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:troski_test/Intro_screens/troski_exp1.dart';
import 'package:troski_test/Intro_screens/troski_exp2.dart';
import 'package:troski_test/Intro_screens/troski_exp3.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/phone_number_screen.dart';

class TroskiExplainedScreen1 extends StatefulWidget {
  const TroskiExplainedScreen1 ({Key? key}): super(key: key);
  @override
  _troskiExplainedScreenState createState() => _troskiExplainedScreenState();
}


class _troskiExplainedScreenState extends State<TroskiExplainedScreen1> {

//Controller
PageController _controller = PageController() ;

//keep track of last page
bool onLastPage = false;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Stack(
            children: [
              PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    onLastPage = (index == 2);
                  });
                },
                children: [
                  TroskiExp1(),
                  TroskiExp2(),
                  TroskiExp3(),
                ],
              ),

              //dot indicators
              Container(
                alignment: Alignment(0,0.75),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    //skip button
                    GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(2);
                        },
                      child: 
                      Text(
                        "Skip",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                color: Color(0xffFF8300),
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
              ),
                      ),

                    SmoothPageIndicator(controller: _controller, count: 3),

                    //next button or done
                    onLastPage ?
                    GestureDetector(
                      onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return PhoneNumberScreen();
                       },
                       ),
                       );
                      },
                      child: Text(
                        "Start",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                color: Color(0xffFF8300),
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
                        ),
                        )
                      :GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                        duration: Duration(milliseconds: 500), 
                        curve: Curves.easeIn,
                        );
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                color: Color(0xffFF8300),
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
              ),
              ),
                  ],
                )
              ),
            ]
        ),
             
        );
        
    
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
}
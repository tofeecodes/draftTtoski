// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

class RideHistList extends StatelessWidget {
  var busimage;
  final String station;
  final String bookDate;
  final String bookTime;
  final String amountPaid;
  //var moreInfo;

  RideHistList({
    Key? key,
    required this.busimage,
    required this.station,
    required this.bookDate,
    required this.bookTime,
    required this.amountPaid,
    //required this.moreInfo,
    }) : super(key:key);

  @override
  Widget build(BuildContext context) { 
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
      children: [
                  Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children:[
                      busimage,
                  //color: Colors.black
                  SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            station,
                            style: TextStyle(
                                      fontFamily: 'Poppins-Regular',
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                            ),
                           // SizedBox(width: 90),

                           Row(
                             children: [
                               Text(
                                bookDate,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                          fontFamily: 'Poppins-Light',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                        ),
                                ),
                                
                                SizedBox(width:5),

                                Icon(
                                Icons.circle,
                                color: Colors.black,
                                size: 5.00 ,
                                ),

                                SizedBox(width:5),

                                Text(
                            bookTime,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                      fontFamily: 'Poppins-Light',
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                    ),
                            ),
                             ],
                           ), 

                           Text(
                            amountPaid,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                      fontFamily: 'Poppins-Light',
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                    ),
                           ),  
                        ]
                      ),
                        ]
                      ),

                            Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.grey,
                                //size: CircleAvatar._defaultMinRadius ,
                                ),
                           
                        ],
                      ),
                    
                  ),
                  
      ]
                  ),
    );
    
  }
}
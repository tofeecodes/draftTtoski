// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

class BusList extends StatelessWidget {
  var image;
  final String busName;
  final String busDistance;
  final String busFare;

  BusList({
    Key? key,
    required this.image,
    required this.busName,
    required this.busDistance,
    required this.busFare,
    }) : super(key:key);

  @override
  Widget build(BuildContext context) { 
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
      children: [
                  Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children:[
                      image,
                  //color: Colors.black
                  SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            busName,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                            ),
                           // SizedBox(width: 90),

                           Text(
                            busDistance,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                            ), 
                        ]
                      ),
                        ]
                      ),
                            Text(
                              busFare,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xffFF8300),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              ),
                            ),
                           
                        ],
                      ),
                    
                  ),
                  
      ]
                  ),
    );
    
  }
}
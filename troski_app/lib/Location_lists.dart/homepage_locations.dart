// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePageLocList extends StatelessWidget {
  final icon;
  final String busStopName;
  final String busStopLocation;

  const HomePageLocList({
    Key? key,
    required this.icon,
    required this.busStopName,
    required this.busStopLocation,
    }) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
      children: [
                  Container(
                  child: Row(
                    children: [
                      Icon(
                  icon,
                  color: Colors.black,
                  ),
                  SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            busStopName,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                            ),
                           Text(
                            busStopLocation,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                            ), 
                        ],
                      ),
                    ],
                  ),
                  ),
      ]
                  ),
    );
    
  }
}
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SettingsElements extends StatelessWidget {
  final Widget titleIcon; // Change the type to Widget
  final String optionName;
  final String optionExample;
  final Widget moreIcon; // Change the type to Widget

  SettingsElements({
    Key? key,
    required this.titleIcon,
    required this.optionName,
    required this.optionExample,
    required this.moreIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              titleIcon,

              SizedBox(width: 10),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    optionName,
                    style: TextStyle(
                      fontFamily: 'Poppins-Regular',
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(height: 2),

                  Text(
                    optionExample,
                    style: TextStyle(
                      fontFamily: 'Poppins-Light',
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ],
          ),
          moreIcon,
        ],
      ),
    );
  }
}

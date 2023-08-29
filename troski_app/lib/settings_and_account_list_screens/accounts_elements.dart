// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, sort_child_properties_last, unused_import

import 'package:flutter/material.dart';
import 'package:troski_test/main.dart';


class AccountElements extends StatelessWidget {
  final Widget titleIcon;
  final String optionName;
  //final String optionExample;
  final Widget moreIcon;

  AccountElements({
    Key? key,
    required this.titleIcon,
    required this.optionName,
    //this.optionExample,
    required this.moreIcon,
    }) : super(key:key);

    @override
  Widget build(BuildContext context) { 
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children:[
          titleIcon,

          SizedBox(width: 10),

          Text(
            optionName,
          style: TextStyle(
                      fontFamily: 'Poppins-Regular',
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
          ),
                            ),
            ]
          ),
          moreIcon,
        ],
      ),
    );
  }
}
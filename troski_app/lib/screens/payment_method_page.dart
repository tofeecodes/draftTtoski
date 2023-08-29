// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:troski_test/Location_lists.dart/bus_list_screen.dart';
import 'package:troski_test/Location_lists.dart/homepage_locations.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/choose_location_page.dart';
import 'package:troski_test/screens/dansoman_bus_listscreen.dart';
import 'package:troski_test/screens/landing_page.dart';
import 'package:troski_test/screens/momo_pay1_screen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({Key? key}) : super(key: key);

@override

  _paymentMethodScreenState createState() => _paymentMethodScreenState();
}
int numberOfSeats = 1;

void navigateToMomoPay1(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => MomoPay1Screen())); 
}


late GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  

Widget buildBookBtn(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical:25),
    width: double.infinity,
    child: ElevatedButton (
      onPressed: () {
        navigateToMomoPay1(context);
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
        'Book',
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



class _paymentMethodScreenState extends State<PaymentMethodPage> {
  String ?selectedPaymentMethod = "";
  @override


  Widget build(BuildContext context) {
    String selectedPaymentMethod = "";
    return Scaffold(
      
      body: Stack(
        children:[
          GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
        },
        initialCameraPosition: CameraPosition(
          target: LatLng(37.7749, -122.4194),
          zoom: 12.0,
        ),
      ),

 SafeArea(
        child: Column(
         children: [
          SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 20,),

              GestureDetector(
                      onTap: () {
    Navigator.pop(context);
  },
   child: Icon(
                Icons.arrow_back,
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 120),
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0), 
                decoration: BoxDecoration(
                  color: Colors.white,
        borderRadius: BorderRadius.circular(30),
                  boxShadow: [
    BoxShadow(
      color: Colors.black.withOpacity(0.2), // Shadow color
      blurRadius: 4, // Spread radius
      offset: Offset(1,1), // Offset of the shadow
    ),
  ],
                ),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.grey,

                    ),

                  Text(
                    "Okponglo",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),

                  SizedBox(width: 20),
                  Text(
                    "30 buses nearby",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.normal
                    ),
                  ),

                  
                ],
              ),

        ),
            ],
          ),

        SizedBox(height: 400),
          Expanded(
            
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 40 ,horizontal:60),
              decoration: BoxDecoration(
                color:Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70.0),
                topRight: Radius.circular(70.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Shadow color
                  blurRadius: 8, // Spread radius
                  offset: Offset(1,1), // Offset of the shadow
                   ),
                   ],
              ),
              //Search Box
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    
                    BusList(
                        image: Image.asset('assets/dbus_icon.jpg',
                        //width: 50, height: 30,
                        fit:  BoxFit.contain),
                        busName: "Dansoman Bus",
                        busDistance: "${50} min away",
                        busFare: "GHS ${10.00}" 
                       ),
                       
                       SizedBox(height: 18),

                         Divider(  // Add this line to create a line under the BusList
                                 color: Color.fromARGB(255, 216, 214, 214),
                                 thickness: 1.0,
                                 height: 30.0,
                               ),
                               
                               SizedBox(height: 18),

                               Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("No. of Seats Needed",
                                  style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                                  ),
                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
Container(
  height: 40,
  width:40,
  decoration: BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(9),
  ),
  child: Stack(
    alignment: Alignment.topRight, // Center the icon within the container
    children: [
      IconButton(
        icon: Icon(
          Icons.remove,
          color: Colors.white,
        ),
        onPressed: () {
          // Handle decrement button press
          setState(() {
            if (numberOfSeats > 1) {
              numberOfSeats--;
            }
          });
        },
      ),
    ],
  ),
),

        SizedBox(width: 9),

        Text(
          "$numberOfSeats", // Replace with actual number that can be increased or decreased
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),

        SizedBox(width: 9),

        Container(
          padding: EdgeInsets.only(bottom: 8, right: 10),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Color(0xffFF8300),
            //border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(9),
          ),
          child: IconButton(
            icon: Icon(Icons.add,
            color: Colors.white),
            onPressed: () {
              // Handle increment button press
              setState(() {
                if (numberOfSeats < 15) {
                numberOfSeats++;
                }
              });
            },
          ),
        ),
      ],
    ),
            
                                ],
                               ),

                               SizedBox(height: 20),

                               Align(
                                alignment: AlignmentDirectional.centerStart,
                                 child: Text("Payment Method",
                                 //textAlign: TextAlign.left,
                                 style: TextStyle(
                                                             fontFamily: 'Poppins',
                                                             fontWeight: FontWeight.w500,
                                                             fontSize: 18,
                                                           ),
                                 ),
                               ),

                               SizedBox(height: 20),

                               RadioListTile(
      title: Text("Cash",
      style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                            ),  // Replace with your desired payment method text
      value: "cash",  // Replace with the value you want to associate with the payment method
      groupValue: selectedPaymentMethod,
      onChanged: (value) {
        setState(() {
          selectedPaymentMethod = value!;
        });
      },
    ),

    RadioListTile(
      title: Text("Mobile Money",
      style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
      ), 
      value: "mobile_money",  
      groupValue: selectedPaymentMethod,
      onChanged: (value) {
        setState(() {
          selectedPaymentMethod = value!;
        });
      },
    ),

SizedBox(height: 20),

buildBookBtn(context),
    
  ],


),


                       
                      ),
                  
                      )
                
                  
                    

                
                  
         ],

              ),
          ),
          ]
          )
        );
      
      
  }



  }



                     /* 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/dbus_icon.jpg',
                              fit:  BoxFit.contain,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Dansoman Bus',
                                  style: TextStyle(
                                  fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
              ),
              SizedBox(height: 5),
              
              Text("${30} min away",
              style: TextStyle(
                                  fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
              ),
                                ],
                              ),
                            ],
                          ),

                          Text("GHS ${10.00}",
                     style: TextStyle(
                              fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
               ),
                        ],
                      ),
                      */
                  
         
         
              
               
               
         
      
      
        
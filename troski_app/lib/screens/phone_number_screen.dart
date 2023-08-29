// ignore: unused_import
// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/otp_screen.dart';

void main() => runApp(const MyApp());

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  _phoneNumberScreenState createState() => _phoneNumberScreenState();
  /*Widget build(BuildContext context)  {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 201, 25, 13)),
      home:Scaffold(
        body: Center(child: Text('This is my sign up page')),
        appBar: AppBar(
          title: Text('WordPair Generator'),
                    backgroundColor: Color.fromARGB(255, 201, 25, 13),)),
          );
  }*/
}

Widget buildTroskiImageSmall() {
  return Image.asset(
    'assets/small_troski_icon.jpg', // Replace with your image path
    width: 200, // Set the desired width
    height: 200, // Set the desired height
    fit: BoxFit.contain, // Apply appropriate fit option
  );
}

Widget buildPsText() {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "By proceeding, you consent to get calls, whatsApp, or SMS "
                  "messages, including those by automated means from Troski and it’s affiliates to the number provided",
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ],
        )
      ]);
}

class _phoneNumberScreenState extends State<PhoneNumberScreen> {
  final phoneController = TextEditingController();
  String verify = "";

  void navigateToSignUpPage(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => OtpScreen(
                  verificationId: verify,
                  phoneNumber: phoneController.text,
                )));
  }

  Widget buildPhoneNumNextBtn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 50),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () async {
          debugPrint(phoneController.text);
          // try {
            await FirebaseAuth.instance.verifyPhoneNumber(
                        phoneNumber: phoneController.text,
                        verificationCompleted: (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException e) {
                          debugPrint('Verification failed: $e');
                        },
                        codeSent: (String verificationId, int? resendToken) {
                          setState(() => verify = verificationId);
                          navigateToSignUpPage(context);
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {
                          debugPrint('timed out -> $verificationId');
                        },
                      );
          // } catch (e) {
          //   debugPrint(e.toString());
          // }

          // navigateToSignUpPage(context);
        },
        child: Text(
          'Next',
          style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.all(15.0)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
        ),
      ),
    );
  }

  Widget buildPhoneNumber() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        /* Text(
        'Please enter your phone number',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),
      ),*/

        SizedBox(height: 10),
        Container(
          width: 450,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xffFF8300),
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
            controller: phoneController,
            keyboardType: TextInputType.text,
            style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.normal),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 14, horizontal: 50),
              prefixIcon: Icon(Icons.phone, color: Colors.black),
              hintText: '+233',
              hintStyle: TextStyle(
                  fontFamily: 'Poppins', fontSize: 12, color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
            child: Stack(children: <Widget>[
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
                ])),
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
              child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Troski',
                          //textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xffFF8300),
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),

                    SizedBox(height: 20),
                    buildTroskiImageSmall(),
                    //SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 50),
                        Text(
                          "Enter your mobile number",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),

                    SizedBox(height: 25),
                    buildPhoneNumber(),
                    buildPhoneNumNextBtn(context),
                    buildPsText(),
                    /*SizedBox(height: 20),
                    buildOtherNames(),
                    SizedBox(height: 20),
                    buildLastName(),
                    SizedBox(height: 20),
                    buildEmail(),
                    buildAggreeTermsBtn(),*/
                  ]),
            ),
          )
        ])),
      ),
    );
  }
}
/*cild: SingleChildScrollView(
                  physics:AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120
                  ),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                     Text(
                      'Sign In',
                      style: TextStyle(
                        color: Color(0xffFF8300),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                     ),
                  ],
                  ),
)*/

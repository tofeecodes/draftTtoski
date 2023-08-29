// ignore: unused_import
// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/signup_page.dart';
import 'package:troski_test/screens/welcome_to_troski_screen.dart';

void main() => runApp(const MyApp());

class OtpScreen extends StatefulWidget {
  const OtpScreen(
      {super.key, required this.verificationId, required this.phoneNumber});
  final String verificationId;
  final String phoneNumber;

  // SignUpPage({required this.verificationId});

  @override
  _otpScreenState createState() => _otpScreenState();
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

/* height: 60,
       
        child: TextField(
          obscureText: true,
          style: TextStyle(
            color: Color(0xffFF8300)
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.phone,
              color: Colors.black
            ),
            hintText: 'xxxxxxxxxx',
            hintStyle: TextStyle(
              color: Colors.grey
            ),
          ),
        ),
      ),
    ],
  );
}*/

class _otpScreenState extends State<OtpScreen> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  List<FocusNode> focusNodes = List.generate(6, (index) => FocusNode());

  List<TextEditingController> controllers =
      List.generate(6, (index) => TextEditingController());

  void navigateToSignUpPage(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SignUpPage(
                  phoneNumber: widget.phoneNumber,
                )));
  }

  void navigateToWelcomePage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => WelcomePage()));
  }

  Widget buildOtpNextBtn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 50),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          navigateToSignUpPage(context);
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
              EdgeInsets.all(18.0)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
        ),
      ),
    );
  }

  Widget buildOtp() {
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

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // SizedBox(width: 40),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              width: 50.0,
              height: 60.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffFF8300),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                maxLength: 1,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                focusNode: focusNodes[0],
                controller: controllers[0],
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).requestFocus(focusNodes[1]);
                  }
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              width: 50.0,
              height: 60.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffFF8300),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                maxLength: 1,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                focusNode: focusNodes[1],
                controller: controllers[1],
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).requestFocus(focusNodes[2]);
                  }
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              width: 50.0,
              height: 60.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffFF8300),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                maxLength: 1,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                focusNode: focusNodes[2],
                controller: controllers[2],
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).requestFocus(focusNodes[3]);
                  }
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              width: 50.0,
              height: 60.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffFF8300),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                maxLength: 1,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                focusNode: focusNodes[3],
                controller: controllers[3],
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).requestFocus(focusNodes[4]);
                  }
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              width: 50.0,
              height: 60.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffFF8300),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                maxLength: 1,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                focusNode: focusNodes[4],
                controller: controllers[4],
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).requestFocus(focusNodes[5]);
                  }
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              width: 50.0,
              height: 60.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffFF8300),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                maxLength: 1,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                focusNode: focusNodes[5],
                controller: controllers[5],
                onChanged: (value) async {
                  if (value.length == 1) {
                    // navigateToSignUpPage(context);
                    String code = controllers[0].text +
                        controllers[1].text +
                        controllers[2].text +
                        controllers[3].text +
                        controllers[4].text +
                        controllers[5].text;
                    debugPrint(code);
                    try {
                      PhoneAuthCredential credential =
                          PhoneAuthProvider.credential(
                              verificationId: widget.verificationId,
                              smsCode: code);

                      // UserCredential userCredential =
                      //     await auth.signInWithCredential(credential);
                      // bool isNewUser =
                      //     userCredential.additionalUserInfo?.isNewUser ?? false;

                      // if (isNewUser) {
                      //   // User is new, navigate to sign-up page
                      //   navigateToSignUpPage(context);
                      // } else {
                      //   // User already exists, navigate to main screen
                      //   navigateToWelcomePage(context);
                      // }

                      await auth
                          .signInWithCredential(credential)
                          .then((userCredential) {
                        bool isNewUser =
                            userCredential.additionalUserInfo?.isNewUser ??
                                false;

                        if (isNewUser) {
                          // User is new, navigate to sign-up page
                          navigateToSignUpPage(context);
                        } else {
                          // User already exists, navigate to main screen
                          navigateToWelcomePage(context);
                        }
                      });

                      // Sign the user in (or link) with the credential
                      // await auth.signInWithCredential(credential).then((_) {
                      //   navigateToWelcomePage(context);
                      // });
                    } catch (e) {
                      if (e is FirebaseAuthException &&
                          e.code == "user-not-found") {
                        // Handle the case where the user doesn't exist
                        debugPrint("User does not exist.");
                        navigateToSignUpPage(context);
                        // You might want to navigate to a sign-up screen or show an appropriate message.
                      } else {
                        debugPrint("Error: ${e.toString()}");
                      }
                    }

                    // debugPrint(controllers[3].text);
                  }
                },
              ),
            ),
            // SizedBox(width: 40),
          ],
        ),
      ],
    );
    //SizedBox(width: 40),
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }

    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }

    super.dispose();
  }

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
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 70),
              child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
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
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        SizedBox(height: 185),
                        Text(
                          "Enter the 4-digit code sent to you at +233 ** *** ***6",
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),

                    SizedBox(height: 50),
                    buildOtp(),
                    //SizedBox(height: 50),
                    //buildOtpNextBtn(context),
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
// ignore: unused_import
// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:troski_test/main.dart';
import 'package:troski_test/screens/ride_easy_page.dart';
import 'package:troski_test/utils/prefs.dart';

void main() => runApp(const MyApp());

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key, required this.phoneNumber});

  final String phoneNumber;

  @override
  _signupScreenState createState() => _signupScreenState();
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

class _signupScreenState extends State<SignUpPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final user = FirebaseAuth.instance.currentUser;

  final CollectionReference _usersCollection =
      FirebaseFirestore.instance.collection('users');

  Future<void> addUser() async {
    try {
      debugPrint('reached the add user function');
      debugPrint('User UID: ${user?.uid}');
      debugPrint('reached the add user function');
      await _usersCollection.doc(user?.uid).set({
        "firstName": firstNameController.text,
        "lastName": lastNameController.text,
        "email": emailController.text,
        "phone": widget.phoneNumber
      }, SetOptions(merge: true)).then((_) async {
        debugPrint("User added/updated successfully");

        // save user details to shared preferences
        await UserSessionManager()
            .saveUserId(FirebaseAuth.instance.currentUser?.uid);

        navigateToRideEasyPage(context);
      }).catchError((e) {
        debugPrint(e.toString());
      });

      // _usersCollection.add({
      //   "firstName": firstNameController.text,
      //   "lastName": lastNameController.text,
      //   "email": emailController.text,
      //   "phone": widget.phoneNumber
      // }).then((_) {
      //   debugPrint("User added successfully");
      //   navigateToRideEasyPage(context);
      // });
    } catch (e) {
      debugPrint("Error adding user: $e");
    }
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // @todo -> use a disabled text field for the signed in user's number
        // Text('Signed in as ${user?.phoneNumber ?? 'd'}'),
        const Text(
          'Email',
          style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
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
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(fontFamily: 'Poppins', color: Colors.black87),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.email, color: Colors.black),
              hintText: 'Email',
              hintStyle:
                  TextStyle(fontFamily: 'Poppins', color: Colors.black38),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildFirstName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'First Name',
          style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
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
            controller: firstNameController,
            keyboardType: TextInputType.text,
            style: TextStyle(fontFamily: 'Poppins', color: Colors.black87),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.person, color: Colors.black),
              hintText: 'Abeiku',
              hintStyle:
                  TextStyle(fontFamily: 'Poppins', color: Colors.black38),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildOtherNames() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'OtherNames',
          style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
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
            obscureText: true,
            style: TextStyle(fontFamily: 'Poppins', color: Colors.black87),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.person, color: Colors.black),
              hintText: 'Abeiku',
              hintStyle:
                  TextStyle(fontFamily: 'Poppins', color: Colors.black38),
            ),
          ),
        ),
      ],
    );
  }

  void navigateToRideEasyPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RideEasyPage()));
  }

  Widget buildLastName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Last Name',
          style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
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
            controller: lastNameController,
            keyboardType: TextInputType.text,
            style: TextStyle(fontFamily: 'Poppins', color: Colors.black87),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.person, color: Colors.black),
              hintText: 'Banku',
              hintStyle:
                  TextStyle(fontFamily: 'Poppins', color: Colors.black38),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildTroskiImage2() {
    return Image.asset(
      'assets/main_troski_icon.jpg', // Replace with your image path
      width: 200, // Set the desired width
      height: 200, // Set the desired height
      fit: BoxFit.contain, // Apply appropriate fit option
    );
  }

  Widget buildSignUpBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isChecked
            ? () {
                debugPrint(emailController.text);
                debugPrint(firstNameController.text);
                debugPrint(lastNameController.text);
                debugPrint(widget.phoneNumber);
                // navigateToRideEasyPage(context);
                addUser();
              }
            : null,
        child: Text(
          'Sign Up',
          style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              isChecked ? Colors.black : Colors.grey),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.all(15.0)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
        ),
      ),
    );
  }

  bool isChecked = false;

  Widget buildAgreeTermsCheck() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: ThemeData(unselectedWidgetColor: Colors.black),
          child: Checkbox(
              value: isChecked,
              checkColor: Colors.black,
              activeColor: Colors.orange,
              onChanged: (value) {
                //if (newValue != null) {
                setState(() {
                  isChecked = value!;
                });
              }
              //},
              ),
        ),
        // SizedBox(
        //   width: 1.0,
        //   height: 50,
        // ),
        Expanded(
          child: Text(
            'I have reviewed and agree to the Terms of Use and acknowledge the Privacy Notice!',
            softWrap: true,
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontWeight: FontWeight.w400,
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
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
              child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Center(
                          child: Text(
                            'TROSKI',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xffFF8300),
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    //Alignment.center,
                    // buildTroskiImage2(),
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Let's get to know you",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Text("Kindly fill out the form below to get started",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        )),
                    SizedBox(height: 45),
                    buildFirstName(),
                    /*SizedBox(height: 20),
                    buildOtherNames(),*/
                    SizedBox(height: 20),
                    buildLastName(),
                    SizedBox(height: 20),
                    buildEmail(),
                    SizedBox(height: 20),
                    buildAgreeTermsCheck(),
                    buildSignUpBtn(),
                  ]),
            ),
          )
        ])),
      ),
    );
  }
}
import 'dart:ui';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:task1/constants/colors.dart';
import 'package:task1/screens/home_screen.dart';
import 'package:task1/screens/register_screen.dart';
import 'package:task1/widgets/button.dart';

import '../utils/methods.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String countryCode = "+91";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController phoneNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/swaastik_emii_logo.png', height: 200,),
              Text('Dev Associate',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(Icons.phone, color: secondaryColor),
                SizedBox(
                  width: 4,
                ),
                Text(
                  '7017797714',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )
              ]),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(Icons.location_pin, color: secondaryColor),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'janam bhumi link road mathura',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                )
              ]),
              SizedBox(
                height: 40,
              ),
              Form(
                key: _formKey,
                child: TextFormField(
                  controller: phoneNoController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: ((value) {
                    if (value == null || value.isEmpty) {
                      return 'Field empty';
                    } else if (!isNumeric(value) || value.length != 10) {
                      return 'Invalid phone number';
                    }
                    return null;
                  }),
                  style: TextStyle(fontSize: 18),
                  maxLength: 10,
                  decoration: InputDecoration(
                    prefixIcon: CountryCodePicker(
                      textStyle: TextStyle(fontSize: 18),
                      onChanged: ((value) {
                        countryCode = value.dialCode.toString();
                      }),
                      initialSelection: '+91',
                      favorite: ['+91', 'IND'],
                      showFlagDialog: true,
                      showFlagMain: false,
                      alignLeft: false,
                    ),
                    hintText: 'Mobile',
                    labelText: 'Your registered mobile',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Button(
                        color: secondaryColor,
                        label: 'LOGIN',
                        onPressed: () {
                          bool isValid = _formKey.currentState!.validate();
                          if (isValid) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          }
                        }),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Button(
                        color: greyColor,
                        label: 'REGISTER',
                        onPressed: () {
                          Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterScreen()));
                        }),
                  )
                ],
              ),
              SizedBox(height: 30),
              Text(
                'Mobile device changed?',
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 60),
              Text(
                'About Software',
                style: TextStyle(color: greyColor, fontSize: 15),
                textAlign: TextAlign.center,
              ),
              Text(
                'Vechicle recovery agency app (V_5.0)',
                style: TextStyle(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              Text(
                'Design & Developed By',
                style: TextStyle(color: secondaryColor, fontSize: 15),
                textAlign: TextAlign.center,
              ),
              Text(
                'Applied Science Research & Development Company (ASRDC)',
                style: TextStyle(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Purchase: + 91 9552018722',
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

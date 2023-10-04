import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:task1/constants/colors.dart';
import 'package:task1/screens/register_details_screen.dart';

import '../utils/methods.dart';
import '../widgets/button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String countryCode = "+91";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController phoneNoController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0.0,
        title: Text('Regsiter'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
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
                SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      child: Button(
                          color: secondaryColor,
                          label: 'NEXT',
                          onPressed: () {
                            bool isValid = _formKey.currentState!.validate();
                          if (isValid) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterDetailsScreen()));
                          }
                          }),
                    )
          ],
        ),
      ),
    );
  }
}
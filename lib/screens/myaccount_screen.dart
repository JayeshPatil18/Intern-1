import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task1/constants/colors.dart';

import '../utils/methods.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({super.key});

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  void _handlePopupSelection(String choice) {
    print('Selected: $choice');
  }

    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController firstnameController = TextEditingController(text: 'Aakash');
  TextEditingController lastnameController = TextEditingController(text: 'Dave');
  TextEditingController mobileController = TextEditingController(text: '9131235028');
  TextEditingController stateController = TextEditingController(text: 'Other');
  TextEditingController districtController = TextEditingController(text: 'Other');
  TextEditingController tehsilController = TextEditingController(text: 'Other');
  TextEditingController villageController = TextEditingController(text: 'Indore');
  TextEditingController pincodeController = TextEditingController(text: '455556');
  TextEditingController addressController = TextEditingController(text: 'pam');
  TextEditingController fromController = TextEditingController(text: 'NA');
  TextEditingController tillDateController = TextEditingController(text: 'NA');
  TextEditingController daysController = TextEditingController(text: 'Rem Day: 0');


  String? _validateInput(String? input, int index) {
    if (input != null) {
      input = input.trim();
    }
      if (input == null || input.isEmpty) {
          return 'Field empty';
        } else{
          return null;
        }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGreyColor,
      appBar: AppBar(
        backgroundColor: lightGreyColor,
        elevation: 0.0,
        title: Text('My Account'),
        actions: [
          PopupMenuButton<String>(
              icon: Icon(Icons.more_vert),
              onSelected: _handlePopupSelection,
              itemBuilder: (BuildContext context) {
                return [
                  _buildPopupMenuItem('Change profile picture', Icons.account_circle), // Customized item with icon
                  _buildPopupMenuItem('Add KYC picture', Icons.add_card), // Customized item with icon
                  _buildPopupMenuItem('Account transaction', Icons.currency_rupee_sharp), // Customized item with icon
                  _buildPopupMenuItem('Logout', Icons.logout), // Customized item with icon
                  _buildPopupMenuItem('Download id card', Icons.card_membership), // Customized item with icon
                  _buildPopupMenuItem('Add OR Code picture', Icons.add_card), // Customized item with icon
                ];
              },
            ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: lightGreyColor,
                    border: Border.all(color: greyColor, width: 0.3)),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-vector/bird-colorful-logo-gradient-vector_343694-1365.jpg'),
                  radius: 60,
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primaryColor, borderRadius: BorderRadius.circular(5)),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ACCOUNT INFORMATION'),
                    SizedBox(
                      height: 20,
                    ),
                    Text('First name'),
                    SizedBox(height: 4,),
                    TextFormField(
                      validator: ((value) {
                        return _validateInput(value, 0);
                      }),
                      controller: firstnameController,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: 'First name'
                      ),
                    ),
                    SizedBox(height: 6,),
                    
                    SizedBox(height: 16,),
                    Text('Last name'),
                    SizedBox(height: 4,),
                    TextFormField(
                      validator: ((value) {
                        return _validateInput(value, 1);
                      }),
                      controller: lastnameController,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: 'Last name'
                      ),
                    ),
                   SizedBox(height: 6,),
                    
                    SizedBox(height: 16,),
                    Text('Registered Mobile'),
                    SizedBox(height: 4,),
                    TextFormField(
                      validator: ((value) {
                        return _validateInput(value, 2);
                      }),
                      controller: mobileController,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: 'Registered Mobile'
                      ),
                    ),
                    SizedBox(height: 6,),
                    
                    SizedBox(height: 16,),
                    Text('State'),
                    SizedBox(height: 4,),
                    TextFormField(
                      validator: ((value) {
                        return _validateInput(value, 3);
                      }),
                      controller: stateController,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: 'State'
                      ),
                    ),
                    SizedBox(height: 6,),
                    
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('District'),
                    SizedBox(height: 4,),
                              TextFormField(
                      validator: ((value) {
                        return _validateInput(value, 4);
                      }),
                      controller: districtController,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: 'District'
                      ),
                    ),
                            ],
                          ),
                        ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tehsil'),
                    SizedBox(height: 4,),
                          TextFormField(
                      validator: ((value) {
                        return _validateInput(value, 5);
                      }),
                      controller: tehsilController,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: 'Tehsil'
                      ),
                    ),
                        ],
                      ),
                    ),
                      ],
                    ),
                    
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Village'),
                    SizedBox(height: 4,),
                              TextFormField(
                      validator: ((value) {
                        return _validateInput(value, 6);
                      }),
                      controller: villageController,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: 'Village'
                      ),
                    ),
                            ],
                          ),
                        ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Pincode'),
                    SizedBox(height: 4,),
                          TextFormField(
                      validator: ((value) {
                        return _validateInput(value, 7);
                      }),
                      controller: pincodeController,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: 'Pincode'
                      ),
                    ),
                        ],
                      ),
                    ),
                      ],
                    ),
                    SizedBox(height: 6,),
                    
                    SizedBox(height: 16,),
                    Text('Address'),
                    SizedBox(height: 4,),
                    TextFormField(
                      validator: ((value) {
                        return _validateInput(value, 8);
                      }),
                      controller: addressController,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: 'Address'
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primaryColor, borderRadius: BorderRadius.circular(5)),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ACTIVE SUBSCRIPTION'),
                    SizedBox(
                      height: 20,
                    ),
                    Text('From'),
                    SizedBox(height: 4,),
                    TextFormField(
                      validator: ((value) {
                        return _validateInput(value, 9);
                      }),
                      controller: fromController,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: 'From'
                      ),
                    ),
                    SizedBox(height: 6,),
                    
                    SizedBox(height: 16,),
                    Text('Till date'),
                    SizedBox(height: 4,),
                    TextFormField(
                      validator: ((value) {
                        return _validateInput(value, 10);
                      }),
                      controller: tillDateController,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: 'Till date'
                      ),
                    ),
                    SizedBox(height: 6,),
                    
                    SizedBox(height: 16,),
                    Text('Remaining days'),
                    SizedBox(height: 4,),
                    TextFormField(
                      validator: ((value) {
                        return _validateInput(value, 11);
                      }),
                      controller: daysController,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: 'Remaining days'
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text('MY KYCs', textAlign: TextAlign.left,),
                )),
            ],
          ),
        ),
      ),
    );
  }

  PopupMenuItem<String> _buildPopupMenuItem(String value, IconData iconData) {
    return PopupMenuItem<String>(
      value: value,
      child: Row(
        children: [
          Icon(iconData, color: Color(0xFF676767),), // Icon on the left
          SizedBox(width: 8.0), // Spacer
          Text(value, style: TextStyle(color: Color(0xFF676767))), // Text
        ],
      ),
    );
  }
}

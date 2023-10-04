import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task1/screens/myaccount_screen.dart';

import '../constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40.0),
    ),
                prefixIcon: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black), onPressed: () {  },),
                suffixIcon: IconButton(icon: Icon(Icons.settings, color: greyColor), onPressed: () {  },),
                hintText: 'Enter your name',
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(top: 4, right: 10),
                padding: EdgeInsets.only(top: 2, bottom: 2, right: 6, left: 6),
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Text('Online', style: TextStyle(color: Colors.white, fontSize: 12),),
              ),
            ),
            SizedBox(height: 20),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://img.freepik.com/free-vector/bird-colorful-logo-gradient-vector_343694-1365.jpg'),
              radius: 80,
            ),
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
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: cardColor, borderRadius: BorderRadius.circular(0.0)),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                      'You account is inactive. Please ask you agency to activate your account.',
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                  Container(
                    margin: EdgeInsets.all(14),
                    child: Row(
                      children: [
                        Expanded(
                            child: OutlinedButton(
                                onPressed: () {},
                                child: Text(
                                  'REFRESH',
                                  style: TextStyle(
                                      color: secondaryColor, fontSize: 16),
                                ))),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: OutlinedButton(
                                onPressed: () {},
                                child: Text(
                                  'PAY',
                                  style: TextStyle(
                                      color: secondaryColor, fontSize: 16),
                                ))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: lightGreyColor,
                        borderRadius: BorderRadius.circular(6.0)),
                    child: Column(
                      children: [
                        Text(
                          'Remaining Days',
                          style: TextStyle(
                              color: greyColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '0',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: lightGreyColor,
                        borderRadius: BorderRadius.circular(6.0)),
                    child: Column(
                      children: [
                        Text(
                          'Offline Days',
                          style: TextStyle(
                              color: greyColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '0',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyAccountScreen()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: lightGreyColor,
                          borderRadius: BorderRadius.circular(6.0)),
                      child: Column(
                        children: [
                          Icon(
                            Icons.account_circle,
                            size: 32,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'My Account',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: lightGreyColor,
                        borderRadius: BorderRadius.circular(6.0)),
                    child: Column(
                      children: [
                        Icon(
                          Icons.directions_car_filled,
                          size: 32,
                        ),
                        SizedBox(height: 5),
                        Text(
                          '0',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: lightGreyColor,
                  borderRadius: BorderRadius.circular(6.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'About Software',
                      style: TextStyle(color: greyColor, fontSize: 16),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Vechicle recovery agency app (V_5.0)',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Design & Developed By',
                      style: TextStyle(color: secondaryColor, fontSize: 15),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Applied Science Research & Development Company (ASRDC)',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      textAlign: TextAlign.left,
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
                      textAlign: TextAlign.left,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                        colors: [
                          Colors.red.shade300,
                          Colors.red.shade300,
                          Colors.red.shade300,
                          Colors.white
                        ]
                    )
                ),
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                  body: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 156,top: 200),
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.black, fontSize: 33),
                        )
                      ),
                      Container(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,right: 35,left: 35),
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Employee ID',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                )
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                            ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
        )
    )
    );
  }
}
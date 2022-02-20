import 'package:flutter/material.dart';
import 'package:flutter_restaurant_booking/backmail_page.dart';
import 'package:flutter_restaurant_booking/changenewpassword_page.dart';
import 'package:flutter_restaurant_booking/forgetpassword_page.dart';
import 'package:flutter_restaurant_booking/home_page.dart';
import 'package:flutter_restaurant_booking/onboarding_page.dart';
import 'package:flutter_restaurant_booking/registration_page.dart';
import 'package:flutter_restaurant_booking/success_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'booking restoran online',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Inter',
      ),
      home: const HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:neodisha/pages/account.dart';
import 'package:neodisha/pages/home_page/home_mobile_view.dart';
import 'package:neodisha/pages/home_page/home_state_view.dart';
import 'package:neodisha/pages/otp.dart';
import './pages/phone.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'phone',
    routes: {
      'phone': (context) => MyPhone(),
      'otp': (context) => MyOtp(),
      'home': (context) => HomeStateView(),
    },
  ));
}

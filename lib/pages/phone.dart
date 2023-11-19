import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({super.key});

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController countryCode = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    countryCode.text = '+91';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe0f5f6),
      body: Center(
        child: SizedBox(
          height: 450.0,
          width: 350.0,
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffb9e9eb),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 20.0,
                  spreadRadius: 10.0,
                ),
              ],
            ),
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Register',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  Image.asset(
                    'assets/regd.jpg',
                    width: 300,
                    height: 150,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Enter your phone number to continue the registration',
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  IntlPhoneField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff03afb6),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'otp');
                      },
                      child: const Text('Continue'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

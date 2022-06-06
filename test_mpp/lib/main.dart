import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Test Application MPP',
      home: Scaffold(
        body: Center(
          child: ContactButton(),
        ),
      ),
    );
  }
}

class ContactButton extends StatelessWidget {
  const ContactButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          primary: Colors.white,
          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          padding: EdgeInsets.symmetric(vertical: 13, horizontal: 30),
          backgroundColor: Colors.teal.shade500),
      onPressed: () => {print('test')},
      child: const Text(
        'Page contact',
      ),
    );
  }
}

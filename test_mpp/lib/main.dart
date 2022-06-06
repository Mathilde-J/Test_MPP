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
          child: CustomFlutterButton(),
        ),
      ),
    );
  }
}

class CustomFlutterButton extends StatelessWidget {
  const CustomFlutterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
      ),
      onPressed: () => {print('test')},
      child: const Padding(
        padding: EdgeInsets.all(15),
        child: FlutterLogo(
          size: 40,
        ),
      ),
    );
  }
}

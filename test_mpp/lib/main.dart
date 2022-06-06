import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Application MPP',
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ContactButtons(),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CustomFlutterButton(),
                    SizedBox(
                      width: 70,
                    ),
                    ContactButton(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomFlutterButton extends StatelessWidget {
  const CustomFlutterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          shape: const CircleBorder(), backgroundColor: Color(0xFF0188D6)),
      onPressed: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PageContact(),
          ),
        ),
      },
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: FlutterLogo(
          size: 40,
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
          textStyle: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          backgroundColor: Colors.teal.shade500),
      onPressed: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PageContact(),
          ),
        ),
      },
      child: const Text(
        'Page contact',
      ),
    );
  }
}

class ContactButtons extends StatelessWidget {
  const ContactButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          CustomFlutterButton(),
          ContactButton(),
        ],
      ),
    );
  }
}

class PageContact extends StatelessWidget {
  const PageContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page contact'),
      ),
    );
  }
}

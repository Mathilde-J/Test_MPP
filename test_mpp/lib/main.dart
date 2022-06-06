import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                      width: 80,
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
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFCBD5DD),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 9),
          )
        ],
      ),
      child: TextButton(
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
      ),
    );
  }
}

class ContactButton extends StatelessWidget {
  const ContactButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFCBD5DD),
            spreadRadius: 3,
            blurRadius: 10,
            offset: Offset(0, 9),
          )
        ],
      ),
      child: TextButton(
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => {
            Navigator.pop(
              context,
            )
          },
        ),
        automaticallyImplyLeading: false,
        title: Text('Page contact'),
        actions: [
          IconButton(
            onPressed: () => {
              Navigator.pop(
                context,
              )
            },
            icon: Icon(Icons.close),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: const <Widget>[
                ContactCard(),
                ContactCard(),
                ContactCard(),
                ContactCard(),
                ContactCard(),
                ContactCard(),
                ContactCard(),
                ContactCard(),
                ContactCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 300,
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color(0xFFE3EBF1),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 8),
              )
            ],
            border: Border.all(
              color: Color(0xFFEEEEEE),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(12)),
        padding: EdgeInsets.all(20),
        child: Column(
          children: const <Widget>[
            Align(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 7),
                child: Text(
                  'Dupont Jean-Pierre',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 7),
              child: Text(
                '06-12-34-56-78',
                style: TextStyle(fontSize: 14),
              ),
            )
          ],
        ),
      ),
      onTap: () async {
        const _url = 'https://www.google.com';
        if (!await launchUrl(Uri.parse(_url))) throw 'Could not launch $_url';
      },
    );
  }
}

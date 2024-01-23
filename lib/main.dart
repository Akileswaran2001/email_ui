import 'package:email_ui/defaultfont.dart';
import 'package:email_ui/email_language.dart';
import 'package:email_ui/email_phone.dart';
import 'package:email_ui/emailsign.dart';
import 'package:email_ui/emailstar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'firasans'),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(7.5),
        child: ListView(
          children: const [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Divider(),
                email_language(),
                Divider(),
                email_phone(),
                Divider(),
                defaultfont(),
                Divider(),
                emailstart(),
                Divider(),
                emailsign(),
                Divider(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

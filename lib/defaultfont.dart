import 'package:email_ui/formatrow.dart';
import 'package:flutter/material.dart';

class defaultfont extends StatefulWidget {
  const defaultfont({super.key});

  @override
  State<defaultfont> createState() => _defaultfontState();
}

class _defaultfontState extends State<defaultfont> {
  String font = 'Arial';
  String fontSize = 'Medium';
  Color fontcolor = Colors.black;
  List<String> fontlist = [
    'Arial',
    'Times New Roman',
    'Verdana',
  ];
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 50),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Default text style",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                  "(Use the 'Remove formatting' button on \n the toolbar to reset the default text style)")
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: SizedBox(
              height: 80,
              width: 350,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [formatrow()],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

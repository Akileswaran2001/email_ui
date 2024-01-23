import 'package:email_ui/stardrag.dart';
import 'package:flutter/material.dart';

class emailstart extends StatefulWidget {
  const emailstart({super.key});

  @override
  State<emailstart> createState() => _emailstartState();
}

class _emailstartState extends State<emailstart> {
  List<Color> colors = [
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.green,
  ];
  List<String> text = ["!", ">>", "!", "i", "?"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Stars:", style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 260),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Text(
                      "Drag the stars between the lists.",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                        "The stars will rotate in the order shown below when you click successively. hover your mouse over the image."),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text("Presets :"),
                    const SizedBox(
                      width: 50,
                    ),
                    Text(
                      "1 start",
                      style: TextStyle(color: Colors.blue.shade900),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("4 start",
                        style: TextStyle(color: Colors.blue.shade900)),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("all start",
                        style: TextStyle(color: Colors.blue.shade900)),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("In use:",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(
                      width: 80,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade800,
                      size: 20,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text(
                      "Not in Use:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    stardrag(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class formatrow extends StatefulWidget {
  const formatrow({super.key});

  @override
  State<formatrow> createState() => _formatrowState();
}

class _formatrowState extends State<formatrow> {
  String selectedFontStyle = 'Normal';
  double selectedFontSize = 14.0;
  TextAlign selectedAlignment = TextAlign.left;
  String selectedMoreOptions = 'Option 1';

  List<String> fontStyles = ['Normal', 'Bold', 'Italic'];
  List<double> fontSizes = [12.0, 14.0, 16.0, 18.0];
  List<TextAlign> alignments = [
    TextAlign.left,
    TextAlign.center,
    TextAlign.right
  ];
  List<String> moreOptions = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DropdownButton<String>(
          value: selectedFontStyle,
          onChanged: (String? newValue) {
            setState(() {
              selectedFontStyle = newValue!;
            });
          },
          items: fontStyles.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: SizedBox(
                height: 50,
                width: 50,
                child: Center(
                    child: Text(
                  value,
                  style: const TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                )),
              ),
            );
          }).toList(),
        ),
        DropdownButton<double>(
          value: selectedFontSize,
          onChanged: (double? newValue) {
            setState(() {
              selectedFontSize = newValue!;
            });
          },
          items: fontSizes.map<DropdownMenuItem<double>>((double value) {
            return DropdownMenuItem<double>(
              value: value,
              child: SizedBox(
                height: 50,
                width: 50,
                child: Center(
                    child: Text(
                  value.toString(),
                  style: const TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                )),
              ),
            );
          }).toList(),
        ),
        DropdownButton<TextAlign>(
          value: selectedAlignment,
          onChanged: (TextAlign? newValue) {
            setState(() {
              selectedAlignment = newValue!;
            });
          },
          items: alignments.map<DropdownMenuItem<TextAlign>>((TextAlign value) {
            return DropdownMenuItem<TextAlign>(
              value: value,
              child: SizedBox(
                height: 50,
                width: 50,
                child: Center(
                    child: FittedBox(
                  child: Text(
                    value.toString(),
                    style: const TextStyle(fontSize: 2500),
                    textAlign: TextAlign.justify,
                  ),
                )),
              ),
            );
          }).toList(),
        ),
        DropdownButton<String>(
          value: selectedMoreOptions,
          onChanged: (String? newValue) {
            setState(() {
              selectedMoreOptions = newValue!;
            });
          },
          items: moreOptions.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: SizedBox(
                height: 50,
                width: 50,
                child: Center(
                    child: Text(
                  value,
                  style: const TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                )),
              ),
            );
          }).toList(),
        ),
        // const Column(
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Text(
        //       'This is what your body text will look like.',
        //       style: TextStyle(
        //         fontFamily: 'SansSerif',
        //         fontSize: 16,
        //         letterSpacing: 1.0,
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}

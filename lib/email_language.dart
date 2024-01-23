import 'package:flutter/material.dart';

class email_language extends StatefulWidget {
  const email_language({Key? key}) : super(key: key);

  @override
  State<email_language> createState() => _email_languageState();
}

class _email_languageState extends State<email_language> {
  String selectedLanguage = 'English';
  List<String> languageList = [
    'English',
    'Tamil',
    'German',
    'French',
    'Japanese',
    'Spanish',
    'Korean',
    'Russian',
    'Hindi',
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 50.0),
          child: Column(
            children: [
              Text('language:', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 230),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Gmail text Language: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 275,
                    decoration: BoxDecoration(border: Border.all()),
                    child: ListBody(
                      children: [
                        DropdownButton<String>(
                          isExpanded: true,
                          alignment: AlignmentDirectional.center,
                          value: selectedLanguage,
                          underline: SizedBox(),
                          focusColor: Colors.white,
                          onChanged: (String? newValue) {
                            print("New value selected: $newValue");
                            setState(() {
                              selectedLanguage = newValue!;
                            });
                            print("State updated");
                          },
                          items: languageList
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(value),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Change language settings for other Google products",
                    style: TextStyle(color: Colors.blue.shade900),
                  ),
                ],
              ),
              Text(
                "Show all language options",
                style: TextStyle(color: Colors.blue.shade900),
              ),
              const Divider()
            ],
          ),
        ),
      ],
    );
  }
}

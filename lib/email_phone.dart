import 'package:flutter/material.dart';

class email_phone extends StatefulWidget {
  const email_phone({Key? key});

  @override
  State<email_phone> createState() => _EmailPhoneState();
}

class _EmailPhoneState extends State<email_phone> {
  String selectedCountry = 'India';
  List<String> countries = [
    'United States',
    'Canada',
    'United Kingdom',
    'Germany',
    'France',
    'Italy',
    'Japan',
    'China',
    'India',
    'Brazil',
    'Australia',
    'Mexico',
    'South Africa',
    'Russia',
    'Spain',
    'Argentina',
    'South Korea',
    'Nigeria',
    'Egypt',
    'Saudi Arabia',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Phone number: ",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(width: 190),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Default country code: ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(width: 10),
                  Container(
                    width: 280,
                    decoration: BoxDecoration(border: Border.all()),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      alignment: AlignmentDirectional.center,
                      value: selectedCountry,
                      underline: const SizedBox(),
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          setState(() {
                            selectedCountry = newValue;
                          });
                        }
                      },
                      items: countries
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(value),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}

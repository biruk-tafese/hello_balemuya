import 'package:flutter/material.dart';

class DropdownData {
  static List<String> professions = [
    'Doctor',
    'Engineer',
    'Teacher',
    'Designer',
    'Developer',
  ];
}

class DropdownExample extends StatefulWidget {
  const DropdownExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String selectedProfession = '';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedProfession,
      onChanged: (newValue) {
        setState(() {
          selectedProfession = newValue!;
        });
      },
      items: DropdownData.professions.map((String profession) {
        return DropdownMenuItem<String>(
          value: profession,
          child: Text(profession),
        );
      }).toList(),
    );
  }
}

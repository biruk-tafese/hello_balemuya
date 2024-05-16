import 'package:flutter/material.dart';

class SearchCategory extends StatefulWidget {
  const SearchCategory({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchCategoryState createState() => _SearchCategoryState();
}

class _SearchCategoryState extends State<SearchCategory> {
  String _selectedItemValue = '';
  final List<String> _dropdownItems = [
    'Item 1',
    'Item 2',
    'Item 3'
  ]; // Add your dropdown items here
  List<String> professions = [
    'Software Engineer',
    'Data Scientist',
    'Product Manager',
    'UX Designer',
    'Web Developer',
    'Mobile App Developer',
  ];

  String selectedProfession = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (value) {
            // Perform search logic here
            // Update dropdown recommendations based on input
          },
          decoration: const InputDecoration(
            labelText: 'Search',
          ),
        ),
        DropdownButton<String>(
          value: _selectedItemValue,
          onChanged: (String? newValue) {
            setState(() {
              _selectedItemValue = newValue!;
            });
          },
          items: _dropdownItems.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        )
      ],
    );
  }
}

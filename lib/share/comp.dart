import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget MyTexetField({
  required IconData prefixIcon,
  required TextInputType,
  String? hintText,
}) {
  return TextField(
    // Full Name
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.symmetric(
          vertical: 10.0, horizontal: 16.0), // adjust padding as needed
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0), // adjust radius as needed
        borderSide: const BorderSide(
          width: 1,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0), // adjust radius as needed
        borderSide: const BorderSide(
          width: 1,
        ),
      ),
      prefixIcon: Icon(
        prefixIcon,
        color: Colors.grey,
      ),
      hintText: hintText,
    ),
    keyboardType: TextInputType,
  );
}

Widget MyNote({
  required String title,
  required Color notecolor,
  required String time,
}) {
  return Container(
    width: 350.0,
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: notecolor,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xff383E4A),
            fontSize: 18.0,
            fontFamily: "Corporative Sans Round Condensed",
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          time,
          style: const TextStyle(
            color: Color(0xff383E4A),
            fontSize: 12.0,
            fontFamily: "Corporative Sans Round Condensed",
          ),
        ),
      ],
    ),
  );
}

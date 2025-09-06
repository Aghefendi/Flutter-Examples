import 'package:flutter/material.dart';

Widget builditem(String value, String label) {
  return Column(
    children: [
      Text(
        value,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      Text(
        label,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
      ),
    ],
  );
}

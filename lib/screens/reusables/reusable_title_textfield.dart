import 'package:flutter/material.dart';

Widget reusableTitleTextField({required String title, bool? isHidden, TextInputType? inputType}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 7),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w700,
            fontSize: 17,
          ),
        ),
      ),
      TextFormField(
        obscureText: isHidden??false,
        obscuringCharacter: '*',
        keyboardType: inputType,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    ],
  );
}
import 'package:flutter/material.dart';

Widget HomeTabViewList({required String title, String? typeOfBill}){
  return Column(
    children: [
      Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
      Expanded(
        child: ListView.separated(
          padding: EdgeInsets.only(top: 12),
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.receipt_long),
              title: Text(
                typeOfBill??'Some payments',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(DateTime.now().toString()),
              trailing: Text(
                '\$400',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => Divider(
            indent: 15,
            endIndent: 15,
            color: Colors.grey.shade300,
          ),
          itemCount: 6,
        ),
      ),
    ],
  );
}
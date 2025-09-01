import 'package:flutter/material.dart';

Widget reusableRecentCard({required Size size}) {
  return Container(
    width: size.width / 2.4,
    // height: 150,
    // padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.grey.shade400),
      boxShadow: [
        // BoxShadow(
        //     color: Colors.grey.shade400,
        //     blurRadius: 6,
        //     spreadRadius: 1,
        //     offset: Offset(0, 6)
        // )
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,

          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 7,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Dribbble Pro',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  'Monthly Bill',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 5,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.wallet),
                  Text(
                    'Last Transaction',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Text(
                '28-08-2025',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget reusableListTiles({required String label}) {
  return ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
    leading: Expanded(
      child: Material(
        shadowColor: Colors.grey,
        elevation: 5,

        borderRadius: BorderRadius.circular(50),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.facebook, size: 40),
        ),
      ),
    ),
    title: Text(label),
    // tileColor: Colors.blue,
    subtitle: Text('Today', style: TextStyle(color: Colors.grey)),
    trailing: Text(
      '-\$5.00',
      style: TextStyle(color: Colors.red, fontSize: 19),
    ),
  );
}

import 'package:finmate_app/screens/reusables/reusable_button.dart';
import 'package:flutter/material.dart';

Widget reusableLoanCard(){
  return Material(
    color: Colors.grey.shade100,
    borderRadius: BorderRadius.circular(10),
    // width: size.width/1,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 7,
        children: [
          Row(
            spacing: 7,
            children: [
              Icon(Icons.home, color: Colors.teal.shade700,),
              Text('Home loan', style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          Row(
            spacing: 22,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // align from start
                    children: [
                      Text('Total: \$800', style: TextStyle(color: Colors.grey.shade700),),
                      SizedBox(height: 5),
                      Text('Date: 29-08-2025', style: TextStyle(color: Colors.grey.shade700),),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // align from start
                  children: [
                    Text('Given: \$100', style: TextStyle(color: Colors.grey.shade700),),
                    SizedBox(height: 5),
                    Text('Remaining: \$700', style: TextStyle(color: Colors.grey.shade700),),
                  ],
                ),
              ),
            ],
          ),
          // Row(
          //   mainAxisSize: MainAxisSize.max,
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text('Total: \$800'),
          //     Text('Given: \$100'),
          //   ],
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text('Date: 29-08-2025'),
          //     Text('Remaining: \$700'),
          //   ],
          // ),
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: SizedBox(height:50, child: reusableButton(label: 'Pay Now', onPressed: (){}, color: Colors.white))),
              Expanded(child: SizedBox(height: 50, child: reusableButton(label: 'View details', color: Colors.teal.shade700, onPressed: (){}))),
            ],
          ),
        ],
      ),
    ),
  );
}
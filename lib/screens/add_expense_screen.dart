import 'dart:developer';

import 'package:finmate_app/screens/reusables/reusable_button.dart';
import 'package:flutter/material.dart';

class AddExpenseScreen extends StatelessWidget {
  AddExpenseScreen({super.key});

  final TextEditingController _dateController = TextEditingController();
  final TextEditingController catController = TextEditingController();
  final List<String> categories = [
    "Home Loan",
    "Car Loan",
    "Education",
    "Medical",
    "Other",
  ];

  String? selectedCategory;

  Future<void> _pickDate({required BuildContext context}) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
    );
    log('Picked Date $pickedDate');
    if (pickedDate == null) {
      _dateController.text = 'No date provided';
    } else {
      _dateController.text =
          '${pickedDate?.day}/${pickedDate?.month}/${pickedDate?.year}';
    }
  }

  void _pickCategory({required BuildContext context}) async {
    final String? picked = await showDialog<String>(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text("Select Category"),
          children: categories.map((cat) {
            return SimpleDialogOption(
              onPressed: () => Navigator.pop(context, cat),
              child: Text(cat),
            );
          }).toList(),
        );
      },
    );

    if (picked != null) {
      // setState(() {
      // });
      catController.text = picked;
    } else {
      catController.text = 'No category selected';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 16,
          children: [
            Row(
              spacing: 16,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: reusableButton(
                      label: 'Income',
                      onPressed: () {},
                      color: Colors.teal.shade800,
                      radius: 50,
                      fontSize: 20,
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: reusableButton(
                      label: 'Expense',
                      onPressed: () {},
                      color: Colors.red,
                      radius: 50,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(16),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(16),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(16),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2),
                  borderRadius: BorderRadius.circular(16),
                ),
                label: Text(
                  'Amount',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 22,
                ),
              ),
            ),
            TextFormField(
              controller: _dateController,
              readOnly: true, // prevents keyboard from opening
              decoration: InputDecoration(
                labelText: "Select Date",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 22,
                ),
                suffixIcon: Icon(Icons.calendar_today),
              ),
              onTap: () {
                _pickDate(context: context);
                // _pickCategory(context: context);
              },
            ),
            TextFormField(
              controller: catController,
              readOnly: true,
              decoration: InputDecoration(
                labelText: "Select Category",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 22,
                ),
                suffixIcon: Icon(Icons.arrow_forward_ios),
                prefixIcon: Icon(Icons.restaurant),
              ),
              onTap: () {
                _pickCategory(context: context);
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Notes(Optional)",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 22,
                ),
                suffixIcon: Icon(Icons.arrow_forward_ios),
                prefixIcon: Icon(Icons.restaurant),
              ),
              keyboardType: TextInputType.multiline,
              minLines: 5,
              maxLines: null,
            ),
          ],
        ),
      ),
    );
  }
}

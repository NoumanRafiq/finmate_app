import 'package:finmate_app/screens/reusables/reusable_button.dart';
import 'package:finmate_app/screens/reusables/reusable_title_textfield.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Change Password'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Column(
              children: [
                reusableTitleTextField(title: 'Old password'),
                reusableTitleTextField(title: 'New password'),
                reusableTitleTextField(title: 'Confirm new password'),
                SizedBox(height: 50,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: reusableButton(
                    label: 'Continue',
                    onPressed: () {},
                    color: Colors.teal.shade800,
                  ),
                ),
              ],
            ),
            Spacer(flex: 2,)
          ],
        ),
      ),
    );
  }
}

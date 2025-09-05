import 'package:finmate_app/screens/reusables/reusable_title_textfield.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: width / 4,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Edit Profile',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.teal.shade700,
              ),
            ),
            Column(
              spacing: width * 0.1,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
                          Colors.grey.shade100,
                          Colors.grey.shade200,
                        ]),
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: CircleAvatar(
                        radius: 80,
                        child: Icon(Icons.person, size: 80),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    reusableTitleTextField(
                      title: 'Username',
                      inputType: TextInputType.name,
                    ),
                    reusableTitleTextField(
                      title: 'Full Name',
                      inputType: TextInputType.name,
                    ),
                    reusableTitleTextField(
                      title: 'E-Mail',
                      inputType: TextInputType.emailAddress,
                    ),
                    reusableTitleTextField(
                      title: 'Password',
                      isHidden: true,
                      inputType: TextInputType.visiblePassword,
                    ),
                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

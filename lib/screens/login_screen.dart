import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(child: Icon(Icons.wallet, size: 80), radius: 80),
            Text('Welcome Back 👋', style: TextStyle(fontSize: 26)),
            Text('Log into continue managing your finances.'),
            SegmentedButton(
              segments: [ButtonSegment(value: Text('Login'))],
              selected: <dynamic>{},
            ),
          ],
        ),
      ),
    );
  }
}

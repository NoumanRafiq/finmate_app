import 'package:finmate_app/providers/onboarding_provider.dart';
import 'package:finmate_app/screens/add_expense_screen.dart';
import 'package:finmate_app/screens/analytics_screen.dart';
import 'package:finmate_app/screens/change_pwd_screen.dart';
import 'package:finmate_app/screens/edit_screen.dart';
import 'package:finmate_app/screens/examples.dart';
import 'package:finmate_app/screens/home_screen.dart';
import 'package:finmate_app/screens/loan_screen.dart';
import 'package:finmate_app/screens/onboarding_screen.dart';
import 'package:finmate_app/screens/login_screen.dart';
import 'package:finmate_app/screens/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
    );
  }
}

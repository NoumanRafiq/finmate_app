import 'package:finmate_app/providers/onboarding_provider.dart';
import 'package:finmate_app/screens/home_screen.dart';
import 'package:finmate_app/screens/reusables/reusable_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.blue.shade200,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Visibility(
                      visible: isLastPage ? false : true,
                      child: TextButton(
                        onPressed: () => controller.jumpToPage(2),
                        child: Text('Skip'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: PageView(
                  controller: controller,
                  onPageChanged: (index) {
                    setState(() {});
                    isLastPage = index == 2;
                  },
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.abc, size: 80), Text('first')],
                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.hotel, size: 80), Text('second')],
                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.restaurant, size: 80),
                          Text('third'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: SmoothPageIndicator(
                  controller: controller, // PageController
                  count: 3,
                  effect: WormEffect(), // your preferred effect
                  onDotClicked: (index) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    reusableButton(
                      label: !isLastPage ? 'Next' : 'Get stated',
                      onPressed: !isLastPage
                          ? () => controller.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            )
                          : ()async {
                        // ref.watch(onboardingProvider.notifier).completeOnboarding();
                        if (context.mounted) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (_) => const HomeScreen()),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

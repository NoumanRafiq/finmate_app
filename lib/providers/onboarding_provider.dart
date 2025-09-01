

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

// --- PROVIDER SETUP ---

final onboardingProvider =
StateNotifierProvider<OnboardingNotifier, bool>((ref) {
  return OnboardingNotifier();
});

class OnboardingNotifier extends StateNotifier<bool> {
  OnboardingNotifier() : super(false) {
    _loadOnboardingState();
  }

  Future<void> _loadOnboardingState() async {
    final prefs = SharedPreferencesAsync();
    final seen = await prefs.getBool('onboarding_seen') ?? false;
    state = seen;
  }

  Future<void> completeOnboarding() async {
    final prefs = SharedPreferencesAsync();
    await prefs.setBool('onboarding_seen', true);
    state = true;
  }
}

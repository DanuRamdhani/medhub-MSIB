import 'package:medhub/routes/routes_name.dart';
import 'package:medhub/src/on_boarding/views/onboarding.dart';
import 'package:medhub/src/splash/views/splash.dart';

final routes = {
  AppRoute.splash: (_) => const SplashPage(),
  AppRoute.onBoarding: (_) => const OnboardingPage(),
};

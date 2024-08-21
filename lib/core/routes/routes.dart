import 'package:medhub/core/routes/routes_name.dart';
import 'package:medhub/src/on_boarding/views/welcome.dart';
import 'package:medhub/src/on_boarding/views/onboarding.dart';
import 'package:medhub/src/splash/views/splash.dart';

final routes = {
  AppRoute.splash: (_) => const SplashPage(),
  AppRoute.onBoarding: (_) => const OnboardingPage(),
  AppRoute.welcome: (_) => const WelcomePage(),
};

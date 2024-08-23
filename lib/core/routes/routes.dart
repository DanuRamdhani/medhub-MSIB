import 'package:medhub/core/routes/routes_name.dart';
import 'package:medhub/src/auth/views/login.dart';
import 'package:medhub/src/auth/views/login_succes.dart';
import 'package:medhub/src/auth/views/register.dart';
import 'package:medhub/src/auth/views/verify_otp.dart';
import 'package:medhub/src/auth/views/welcome.dart';
import 'package:medhub/src/cart/views/cart.dart';
import 'package:medhub/src/category/views/category.dart';
import 'package:medhub/src/checkout/views/chekchout.dart';
import 'package:medhub/src/checkout/views/succes_pay.dart';
import 'package:medhub/src/home/views/home.dart';
import 'package:medhub/src/main_wrapper/main_wrapper.dart';
import 'package:medhub/src/product_details/views/product_details.dart';
import 'package:medhub/src/on_boarding/views/onboarding.dart';
import 'package:medhub/src/profile/views/profile.dart';
import 'package:medhub/src/splash/views/splash.dart';

final routes = {
  AppRoute.splash: (_) => const SplashPage(),
  AppRoute.onBoarding: (_) => const OnboardingPage(),
  AppRoute.welcome: (_) => const WelcomePage(),
  AppRoute.login: (_) => const LoginPage(),
  AppRoute.register: (_) => const RegisterPage(),
  AppRoute.verifyOtp: (_) => const VerifyOtpPage(),
  AppRoute.loginSuccess: (_) => const LoginSuccesPage(),
  AppRoute.mainWrapper: (_) => const MainWrapper(),
  AppRoute.home: (_) => const HomePage(),
  AppRoute.category: (_) => const CategoryPage(),
  AppRoute.productDetails: (_) => const ProductDetailsPage(),
  AppRoute.cart: (_) => const CartPage(),
  AppRoute.checkout: (_) => const ChekchoutPage(),
  AppRoute.successPay: (_) => const SuccesPayPage(),
  AppRoute.myProfile: (_) => const ProfilePage(),
};

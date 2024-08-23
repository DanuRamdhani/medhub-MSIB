import 'package:flutter/material.dart';
import 'package:medhub/core/global_widgets/main_button.dart';
import 'package:medhub/core/res/color.dart';
import 'package:medhub/core/res/icons.dart';
import 'package:medhub/core/routes/routes_name.dart';

class LoginSuccesPage extends StatelessWidget {
  const LoginSuccesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 32).copyWith(bottom: 32),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(check),
                      const SizedBox(height: 54),
                      Text(
                        'Phone Number Verified',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: AppColor.primary,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Congradulations, your phone number has been verified. You can start using the app',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: AppColor.fontGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: MainButton(
                text: 'CONTINUE',
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    AppRoute.mainWrapper,
                    (route) => route.settings.name == AppRoute.onBoarding,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:medhub/core/global_widgets/main_button.dart';
import 'package:medhub/core/global_widgets/medhub_font.dart';
import 'package:medhub/core/global_widgets/second_button.dart';
import 'package:medhub/core/helper/context_extension.dart';
import 'package:medhub/core/res/color.dart';
import 'package:medhub/core/res/icons.dart';
import 'package:medhub/core/res/images.dart';
import 'package:medhub/core/routes/routes_name.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    children: [
                      Image.asset(welcome),
                      const SizedBox(height: 32),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Welcome to ',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: AppColor.primary,
                              ),
                            ),
                            const WidgetSpan(
                              baseline: TextBaseline.alphabetic,
                              alignment: PlaceholderAlignment.baseline,
                              child: MedhubFont(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Do you want some help with your health to get better life?',
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
                const SizedBox(height: 32),
                MainButton(
                  text: 'SIGN UP WITH EMAIL',
                  onPressed: () {
                    context.pushNamed(AppRoute.register);
                  },
                ),
                const SizedBox(height: 10),
                const SecondButton(
                  image: facebook,
                  text: 'CONTINUE WITH FACEBOOK',
                ),
                const SizedBox(height: 10),
                const SecondButton(
                  image: google,
                  text: 'CONTINUE WITH GMAIL',
                ),
                const SizedBox(height: 8),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: AppColor.fontGrey,
                  ),
                  onPressed: () {
                    context.pushNamed(AppRoute.login);
                  },
                  child: const Text('LOGIN'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

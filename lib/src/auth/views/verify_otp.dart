import 'package:flutter/material.dart';
import 'package:medhub/core/global_widgets/main_button.dart';
import 'package:medhub/core/helper/context_extension.dart';
import 'package:medhub/core/res/color.dart';
import 'package:medhub/core/routes/routes_name.dart';
import 'package:pinput/pinput.dart';

class VerifyOtpPage extends StatelessWidget {
  const VerifyOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 32).copyWith(bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Enter the verify code',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: AppColor.primary,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'We just send you a verification code via phone +62 821 39 488 953',
                style: TextStyle(
                  color: AppColor.fontGrey,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Pinput(
              defaultPinTheme: PinTheme(
                width: 40,
                textStyle: TextStyle(
                  fontSize: 24,
                  color: AppColor.fontGrey,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  color: Colors.transparent,
                  border: Border(
                    bottom: BorderSide(color: AppColor.grey, width: 2),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            MainButton(
              text: 'SUBMIT CODE',
              onPressed: () {
                context.pushNamed(AppRoute.loginSuccess);
              },
            ),
            const SizedBox(height: 16),
            Text(
              'The verify code will expire in 00:59',
              style: TextStyle(
                color: AppColor.fontGrey,
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Resend Code',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColor.secondary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

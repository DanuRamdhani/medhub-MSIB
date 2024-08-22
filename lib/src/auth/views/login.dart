import 'package:flutter/material.dart';
import 'package:medhub/core/global_widgets/main_button.dart';
import 'package:medhub/core/helper/context_extension.dart';
import 'package:medhub/core/res/color.dart';
import 'package:medhub/core/routes/routes_name.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 32).copyWith(bottom: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: AppColor.primary,
                ),
              ),
              const SizedBox(height: 32),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: AppColor.fontGrey,
                        ),
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Icon(Icons.person_outline),
                        ),
                        border: const UnderlineInputBorder(),
                      ),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      autocorrect: false,
                      validator: (value) {
                        if (value == null ||
                            value.trim().isEmpty ||
                            value.trim().length < 4) {
                          return 'masukan lebih dari 4 karakter';
                        }
          
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: AppColor.fontGrey,
                        ),
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Icon(
                            Icons.lock_outline,
                            size: 22,
                          ),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Text(
                            'Forgot?',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColor.fontGrey,
                            ),
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      autocorrect: false,
                      validator: (value) {
                        if (value == null ||
                            value.trim().isEmpty ||
                            value.trim().length < 6) {
                          return 'masukan lebih dari 6 karakter';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 56),
                    MainButton(
                      text: 'SIGN IN',
                      onPressed: () {
                        context.pushNamed(AppRoute.home);
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  context.pushNamed(AppRoute.register);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: AppColor.fontGrey,
                      size: 10,
                    ),
                    Text(
                      'Don’t have an account? Sign Up',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColor.fontGrey,
                      ),
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

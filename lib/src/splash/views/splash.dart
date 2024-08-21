import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medhub/core/helper/context_extension.dart';
import 'package:medhub/core/res/icons.dart';
import 'package:medhub/core/res/images.dart';
import 'package:medhub/core/global_widgets/medhub_font.dart';
import 'package:medhub/core/routes/routes_name.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        context.pushReplacementNamed(AppRoute.onBoarding);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundSplash),
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(lightning, width: 100, height: 100),
              const MedhubFont(),
            ],
          ),
        ),
      ),
    );
  }
}

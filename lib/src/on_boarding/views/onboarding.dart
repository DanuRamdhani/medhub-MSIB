import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medhub/core/helper/context_extension.dart';
import 'package:medhub/core/res/color.dart';
import 'package:medhub/core/routes/routes_name.dart';
import 'package:medhub/src/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:medhub/src/on_boarding/models/on_boarding.dart';
import 'package:medhub/src/on_boarding/widgets/dot_page.dart';

// int currentIndex = 0;
// PageController pageController = PageController();

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 40).copyWith(bottom: 64),
        child: BlocBuilder<OnBoardingBloc, OnBoardingState>(
          builder: (context, state) {
            int currentIndex = state.currentIndex;
            PageController pageController = state.pageController;

            return Stack(
              children: [
                PageView.builder(
                  itemCount: slides.length,
                  physics: const NeverScrollableScrollPhysics(),
                  controller: pageController,
                  onPageChanged: (index) {
                    context.read<OnBoardingBloc>().add(PageChangedEvent(index));
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(slides[index].image),
                        const SizedBox(height: 40),
                        Text(
                          slides[index].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: AppColor.primary,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          slides[index].description,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: AppColor.fontGrey,
                          ),
                        ),
                      ],
                    );
                  },
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.pushReplacementNamed(AppRoute.welcome);
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            color: AppColor.fontGrey,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          slides.length,
                          (index) => buildDot(index, currentIndex, context),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (currentIndex == slides.length - 1) {
                              context.pushReplacementNamed(AppRoute.welcome);
                            }

                            context.read<OnBoardingBloc>().add(NextPageEvent());
                          });
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(
                            color: AppColor.secondary,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

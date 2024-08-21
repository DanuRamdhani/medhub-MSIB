part of 'on_boarding_bloc.dart';

@immutable
class OnBoardingState {
  final int currentIndex;
  final PageController pageController;

  const OnBoardingState(
      {required this.currentIndex, required this.pageController});

  OnBoardingState copyWith({
    int currentIndex = 0,
    PageController? pageController,
  }) {
    return OnBoardingState(
      currentIndex: currentIndex,
      pageController: pageController ?? this.pageController,
    );
  }
}

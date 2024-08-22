import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'on_boarding_event.dart';
part 'on_boarding_state.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc()
      : super(OnBoardingState(
          currentIndex: 0,
          pageController: PageController(),
        )) {
    on<NextPageEvent>((event, emit) {
      final newIndex = state.currentIndex + 1;
      state.pageController.nextPage(
        duration: const Duration(milliseconds: 800  ),
        curve: Curves.ease,
      );
      emit(state.copyWith(currentIndex: newIndex));
    });

    on<PageChangedEvent>((event, emit) {
      emit(state.copyWith(currentIndex: event.index));
    });
  }
}

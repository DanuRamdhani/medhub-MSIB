part of 'on_boarding_bloc.dart';

@immutable
abstract class OnBoardingEvent {}

class NextPageEvent extends OnBoardingEvent {}

class SkipEvent extends OnBoardingEvent {}

class PageChangedEvent extends OnBoardingEvent {
  final int index;

  PageChangedEvent(this.index);
}

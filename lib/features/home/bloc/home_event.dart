part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeProductWishlitButtonclickedEvent extends HomeEvent {}

class HomeProductCardButtonOnclickedEvent extends HomeEvent {}

class HomeNavigateToWishButtonNavigationEvent extends HomeEvent {}

class HomeNavigateToCardButtonNavigationEvent extends HomeEvent {}

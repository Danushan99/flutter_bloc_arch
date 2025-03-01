part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

class HomeProductWishlistButtonClickEvent extends HomeEvent {}

class HomeProductCardButtonClickedEvent extends HomeEvent {}

class HomeWishlistButtonNavigationEvent extends HomeEvent {}

class HomeCardButtonNavigationEvent extends HomeEvent {}

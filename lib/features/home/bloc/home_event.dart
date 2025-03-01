part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

class HomeProductWishlistButtonClickEvent extends HomeEvent {
  final ProductDataModel clickedProducts;

  HomeProductWishlistButtonClickEvent({required this.clickedProducts});
}

class HomeProductCardButtonClickedEvent extends HomeEvent {
  // final ProductDataModel clickedProducts;

  // HomeProductCardButtonClickedEvent({required this.clickedProducts});
}

class HomeWishlistButtonNavigationEvent extends HomeEvent {}

class HomeCardButtonNavigationEvent extends HomeEvent {}

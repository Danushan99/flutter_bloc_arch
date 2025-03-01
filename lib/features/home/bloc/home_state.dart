part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

abstract class HomeActionState extends HomeState {}

final class HomeInitial extends HomeState {}

class HomeLoadedSucessState extends HomeState {
  //  create list

  final List<ProductDataModel> products;

  HomeLoadedSucessState({required this.products});
}

class HomeLoadedErrorState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeNavigateToWishlistPageActionState extends HomeActionState {}

class HomeNavigateToCartPageActionState extends HomeActionState {}

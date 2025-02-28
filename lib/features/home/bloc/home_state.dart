part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

abstract class HomeActionState extends HomeState {}

final class HomeInitial extends HomeState {}

class HomeLoadedSucessState extends HomeState {}

class HomeLoadedErrorState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeNavigateToWishListActionState extends HomeActionState {}

class HomeNavigateToCardActionState extends HomeActionState {}

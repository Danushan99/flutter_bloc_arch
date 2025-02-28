part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

abstract class HomeActionState extends HomeState {}

final class HomeInitial extends HomeState {}

class HomeLoadedSucessState extends HomeState {}

class HomeLoadedErrorState extends HomeState {}

class HomeLoadingState extends HomeState {}

// class HomeNavigateToWishListActionPage extends HomeActionState {}

// class HomeNavigateToCArdActionPage extends HomeActionState {}

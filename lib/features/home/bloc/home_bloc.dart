import 'dart:async';

import 'package:blco_learning/features/home/models/product_data_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeProductWishlistButtonClickEvent>(
        homeProductWishlistButtonClickEvent);
    on<HomeProductCardButtonClickedEvent>(homeProductCardButtonClickedEvent);
    on<HomeWishlistButtonNavigationEvent>(homeWishButtonNavigationEvent);
    on<HomeCardButtonNavigationEvent>(homeCardButtonNavigationEvent);
  }

  FutureOr<void> homeProductWishlistButtonClickEvent(
      HomeProductWishlistButtonClickEvent event, Emitter<HomeState> emit) {}

  FutureOr<void> homeProductCardButtonClickedEvent(
      HomeProductCardButtonClickedEvent event, Emitter<HomeState> emit) {}

  FutureOr<void> homeWishButtonNavigationEvent(
      HomeWishlistButtonNavigationEvent event, Emitter<HomeState> emit) {
    print("whishlist");
    emit(HomeNavigateToWishlistPageActionState());
  }

  FutureOr<void> homeCardButtonNavigationEvent(
      HomeCardButtonNavigationEvent event, Emitter<HomeState> emit) {
    print("card button pressed");
    emit(HomeNavigateToCartPageActionState());
  }
}

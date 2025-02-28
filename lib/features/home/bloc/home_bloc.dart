import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeProductWishlitButtonclickedEvent>(
        homeProductWishlitButtonclickedEvent);
    on<HomeProductCardButtonOnclickedEvent>(
        homeProductCardButtonOnclickedEvent);
    on<HomeNavigateToWishButtonNavigationEvent>(
        homeNavigateToWishButtonNavigationEvent);
    on<HomeNavigateToCardButtonNavigationEvent>(
        homeNavigateToCardButtonNavigationEvent);
  }

  FutureOr<void> homeProductWishlitButtonclickedEvent(
      HomeProductWishlitButtonclickedEvent event, Emitter<HomeState> emit) {
    print("whish list clcked da fucker");
  }

  FutureOr<void> homeProductCardButtonOnclickedEvent(
      HomeProductCardButtonOnclickedEvent event, Emitter<HomeState> emit) {
    print("card clicked");
  }

  FutureOr<void> homeNavigateToWishButtonNavigationEvent(
      HomeNavigateToWishButtonNavigationEvent event, Emitter<HomeState> emit) {
    emit(HomeNavigateToWishListActionState());
  }

  FutureOr<void> homeNavigateToCardButtonNavigationEvent(
      HomeNavigateToCardButtonNavigationEvent event, Emitter<HomeState> emit) {
    emit(HomeNavigateToCardActionState());
  }
}

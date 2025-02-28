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
  }

  FutureOr<void> homeProductWishlitButtonclickedEvent(
      HomeProductWishlitButtonclickedEvent event, Emitter<HomeState> emit) {
    print("whish list clcked da fucker");
  }

  FutureOr<void> homeProductCardButtonOnclickedEvent(
      HomeProductCardButtonOnclickedEvent event, Emitter<HomeState> emit) {
    print("card clicked");
  }
}

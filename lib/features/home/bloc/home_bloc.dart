// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:blco_learning/data/cart_item.dart';
import 'package:blco_learning/data/grocery_data.dart';
import 'package:blco_learning/data/wishlist_items.dart';
import 'package:blco_learning/features/home/models/product_data_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<HomeProductWishlistButtonClickEvent>(
        homeProductWishlistButtonClickEvent);
    on<HomeProductCardButtonClickedEvent>(homeProductCardButtonClickedEvent);
    on<HomeWishlistButtonNavigationEvent>(homeWishButtonNavigationEvent);
    on<HomeCardButtonNavigationEvent>(homeCardButtonNavigationEvent);
  }
//first method init after app complete need to remove deeay 3 s

  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(Duration(seconds: 3));
    emit(
      HomeLoadedSucessState(
        products: GroceryData.groceryProducts
            .map(
              (e) => ProductDataModel(
                  id: e['id'],
                  name: e['name'],
                  price: e['price'],
                  imageUrl: e['imageUrl'],
                  description: e['description']),
            )
            .toList(),
      ),
    );
  }
// button functions

  FutureOr<void> homeProductWishlistButtonClickEvent(
      HomeProductWishlistButtonClickEvent event, Emitter<HomeState> emit) {
    print("prodect added to whishlist");
    wishlistItems.add(event.clickedProducts);
    emit(ProductWishlistedActionState());
  }

  FutureOr<void> homeProductCardButtonClickedEvent(
      HomeProductCardButtonClickedEvent event, Emitter<HomeState> emit) {
    cartItems.add(event.clickedProducts);
    emit(ProductAddedIntoCardActionState());
  }

//navigation
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

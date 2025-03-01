import 'dart:async';

import 'package:blco_learning/data/cart_item.dart';
import 'package:blco_learning/features/home/models/product_data_model.dart';
import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
    on<CartRemoveFromCartlistEvent>(cartRemoveFronCartlistEvent);
  }

  FutureOr<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartState> emit) {
    emit(CartSuccessState(cartItems: cartItems));
  }

  FutureOr<void> cartRemoveFronCartlistEvent(
      CartRemoveFromCartlistEvent event, Emitter<CartState> emit) {
    cartItems.remove(event.productDataModel);
    emit(CartRemoveActionState());
    emit(CartSuccessState(cartItems: cartItems));
  }
}

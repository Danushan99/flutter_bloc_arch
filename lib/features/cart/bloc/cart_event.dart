part of 'cart_bloc.dart';

@immutable
sealed class CartEvent {}

class CartInitialEvent extends CartEvent {}

class CartRemoveFromCartlistEvent extends CartEvent {
  final ProductDataModel productDataModel;
  CartRemoveFromCartlistEvent({required this.productDataModel});
}

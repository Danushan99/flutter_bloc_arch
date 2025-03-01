part of 'cart_bloc.dart';

@immutable
sealed class CartEvent {}

class CartInitialEvent extends CartEvent {}

class CartRemoveFronCartlistEvent extends CartEvent {
  final ProductDataModel productDataModel;

  CartRemoveFronCartlistEvent({required this.productDataModel});
}

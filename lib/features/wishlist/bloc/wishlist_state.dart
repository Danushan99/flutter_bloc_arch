part of 'wishlist_bloc.dart';

@immutable
sealed class WishlistState {}

abstract class WishlistActionState extends WishlistState {}

final class WishlistInitial extends WishlistState {}

class WishlistSuccessState extends WishlistState {
    final List<ProductDataModel> cartItems;

  WishlistSuccessState({required this.cartItems});
  
}

import 'package:blco_learning/features/cart/card.dart';
import 'package:blco_learning/features/home/bloc/home_bloc.dart';
import 'package:blco_learning/features/wishlist/wish_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    homeBloc.add(HomeInitialEvent());
    super.initState();
  }

  final HomeBloc homeBloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listener: (context, state) {
        if (state is HomeNavigateToCartPageActionState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Cart()));
        } else if (state is HomeNavigateToWishlistPageActionState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => WishList()));
        }
      },
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      builder: (context, state) {
        switch (state.runtimeType) {
          case HomeLoadingState:
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                  color: Colors.orangeAccent,
                ),
              ),
            );
            break;
          case HomeLoadedSucessState:
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.blueGrey[200],
                title: const Text("shop app"),
                actions: [
                  IconButton(
                    onPressed: () {
                      homeBloc.add(HomeWishlistButtonNavigationEvent());
                    },
                    icon: const Icon(Icons.favorite),
                  ),
                  IconButton(
                    onPressed: () {
                      homeBloc.add(HomeCardButtonNavigationEvent());
                    },
                    icon: const Icon(Icons.shopping_bag),
                  ),
                ],
              ),
            );
            break;

          case HomeLoadedErrorState:
            return Scaffold(
              body: Center(
                child: Text("Load Faild"),
              ),
            );
          default:
            return SizedBox(
              child: Text("kinda error oi "),
            );
        }
      },
    );
  }
}

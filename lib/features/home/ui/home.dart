import 'package:blco_learning/features/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBloc homeBloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listener: (context, state) {},
// listenWhen: (previous, current) (){},
// buildWhen: (previous, current) (){}
// ,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text("shop app"),
            actions: [
              IconButton(
                onPressed: () {
                  homeBloc.add(HomeProductWishlitButtonclickedEvent());
                },
                icon: Icon(Icons.favorite),
              ),
              IconButton(
                onPressed: () {
                  homeBloc.add(HomeProductCardButtonOnclickedEvent());
                },
                icon: Icon(Icons.shopping_bag),
              ),
            ],
          ),
        );
      },
    );
  }
}

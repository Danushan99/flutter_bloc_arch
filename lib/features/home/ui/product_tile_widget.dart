import 'package:blco_learning/features/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:blco_learning/features/home/models/product_data_model.dart';

class ProductTileWidget extends StatelessWidget {
  final HomeBloc homeBloc;
  final ProductDataModel productDataModel;

  const ProductTileWidget(
      {super.key, required this.productDataModel, required this.homeBloc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 8,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              productDataModel.imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            productDataModel.name,
            style: const TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            productDataModel.description,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ' RS ' + productDataModel.price.toString(),
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      homeBloc.add(HomeProductWishlistButtonClickEvent(
                          clickedProducts: productDataModel));
                    },
                    icon: const Icon(Icons.favorite),
                  ),
                  IconButton(
                    onPressed: () {
                      homeBloc.add(HomeProductCardButtonClickedEvent(
                          clickedProducts: productDataModel));
                    },
                    icon: const Icon(Icons.shopping_bag),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

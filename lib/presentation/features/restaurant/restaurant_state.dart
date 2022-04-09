import 'package:delivery/domain/entities/product_entity.dart';
import 'package:delivery/domain/entities/restaurant_entity.dart';
import 'package:equatable/equatable.dart';

class RestaurantState extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class RestaurantInitalState extends RestaurantState{}

class RestaurantLoadedState extends RestaurantState{
  final RestaurantEntity restaurant;
  final ProductEntity product;
  RestaurantLoadedState({required this.product, required this.restaurant});
}

class RestaurantLoadingState extends RestaurantState{}
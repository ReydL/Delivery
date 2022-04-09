import 'package:delivery/domain/entities/product_entity.dart';
import 'package:equatable/equatable.dart';

class RestaurantEvent extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class RestaurantLoadedEvent extends RestaurantEvent{}

class RestaurantAddToCartEvent extends RestaurantEvent{
  final ProductEntity product;

  RestaurantAddToCartEvent({required this.product});

  @override
  // TODO: implement props
  List<Object?> get props => [product];
}
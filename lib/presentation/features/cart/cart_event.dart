import 'package:delivery/domain/entities/product_entity.dart';
import 'package:equatable/equatable.dart';

abstract class CartEvent extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class CartLoadedEvent extends CartEvent{}

class AddToCartEvent extends CartEvent{
  final ProductEntity product;

  AddToCartEvent({required this.product});

  @override
  List<Object?> get props => [product];
}

class RemoveFromCartEvent extends CartEvent{}
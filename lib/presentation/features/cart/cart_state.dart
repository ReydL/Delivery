import 'package:delivery/domain/entities/product_entity.dart';
import 'package:equatable/equatable.dart';

abstract class CartState extends Equatable{
@override
  // TODO: implement props
  List<Object?> get props => [];
}

class CartInitialState extends CartState{}

class CartLoadingState extends CartState{}

class CartLoadedState extends CartState {
  final List<ProductEntity> products;
  final int totalPrice;
  CartLoadedState({required this.products, required this.totalPrice});

  @override
  List<Object?> get props => [products];
}
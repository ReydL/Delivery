import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final String nameOfProduct;
  final int costOfProduct;
  final String descriptionOfProduct;
  final String? image;

  const ProductEntity(
      {required this.nameOfProduct,
      required this.costOfProduct,
      required this.descriptionOfProduct,
       this.image});

  @override
  List<Object?> get props =>
      [nameOfProduct, costOfProduct, descriptionOfProduct];
}

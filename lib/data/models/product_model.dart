import 'package:delivery/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  const ProductModel(
      {required String nameOfProduct,
      required int costOfProduct,
      required String descriptionOfProduct,
      required String image})
      : super(
            nameOfProduct: nameOfProduct,
            costOfProduct: costOfProduct,
            descriptionOfProduct: descriptionOfProduct,
            image: image);
}

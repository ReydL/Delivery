import 'package:delivery/domain/entities/restaurant_entity.dart';

import '../../domain/entities/product_entity.dart';

class RestaurantModel extends RestaurantEntity {
  const RestaurantModel(
      {String? image,
      String? logo,
      required String nameOfRestaurant,
      required String typeOfKitchen,
      required List<ProductEntity> dishes})
      : super(
            image: image,
            logo: logo,
            nameOfRestaurant: nameOfRestaurant,
            typeOfKitchen: typeOfKitchen,
            dishes: dishes);
}

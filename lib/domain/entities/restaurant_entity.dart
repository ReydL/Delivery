import 'package:delivery/domain/entities/product_entity.dart';
import 'package:equatable/equatable.dart';

class RestaurantEntity extends Equatable {
  final String? image;
  final String? logo;
  final String nameOfRestaurant;
  final String typeOfKitchen;
  final String? timeOfDel;
  final String? costOfDel;
  final List<ProductEntity> dishes;

  const RestaurantEntity(
      {this.image,
      this.logo,
      required this.nameOfRestaurant,
      required this.typeOfKitchen,
      this.costOfDel,
      this.timeOfDel,
      required this.dishes});

  @override
  List<Object?> get props =>
      [image, logo, nameOfRestaurant, typeOfKitchen, dishes];
}

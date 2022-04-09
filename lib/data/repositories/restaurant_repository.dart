import 'package:delivery/domain/entities/product_entity.dart';
import 'package:delivery/domain/entities/restaurant_entity.dart';

class RestaurantsDataStorage {
  List<RestaurantEntity> popularRestaurants = [
    const RestaurantEntity(
        image: 'assets/images/Rectangle.png',
        nameOfRestaurant: 'BurgerKing',
        typeOfKitchen: 'Американская кухня',
        logo: 'assets/images/BKlogo.png',
        dishes: [
          ProductEntity(
              nameOfProduct: 'Воппер',
              costOfProduct: 500,
              descriptionOfProduct:
                  'Мягкая булочка и сочная мясо. По рецепту шефа Джимма'),
          ProductEntity(
              nameOfProduct: 'Чизбургер',
              costOfProduct: 500,
              descriptionOfProduct:
                  'Мягкая булочка, сочное мясо и вкуснейший сыр.')
        ]),
    const RestaurantEntity(
        image: 'assets/images/Rectangle.png',
        nameOfRestaurant: 'DunganKing',
        typeOfKitchen: 'Дунганская кухня',
        logo: 'assets/images/BKlogo.png',
        dishes: [
          ProductEntity(
              nameOfProduct: 'Дунган Воппер',
              costOfProduct: 500,
              descriptionOfProduct:
              'Мягкая булочка и сочная мясо. По рецепту шефа Джимма'),
          ProductEntity(
              nameOfProduct: 'Дунган Чизбургер',
              costOfProduct: 500,
              descriptionOfProduct:
              'Мягкая булочка и сочная мясо. По рецепту шефа Джимма'),
        ]),
    const RestaurantEntity(
        image: 'assets/images/Rectangle.png',
        nameOfRestaurant: 'РафБургерс',
        typeOfKitchen: 'Татарская кухня',
        logo: 'assets/images/BKlogo.png',
        dishes: [
          ProductEntity(
              nameOfProduct: 'ТатарБургер',
              costOfProduct: 500,
              descriptionOfProduct:
              'Мягкая татарская булочка и сочное татарское мясо. По рецепту шефа Рафа'),
          ProductEntity(
              nameOfProduct: 'ТатарЧизбургер',
              costOfProduct: 500,
              descriptionOfProduct:
              'Мягкая татарская булочка и сочная татарская котлета с татарским сыром. По рецепту шефа Рафа'),
        ]),
  ];

  List<RestaurantEntity> allRestaurants = [
    const RestaurantEntity(
        image: 'assets/images/Rectangle.png',
        logo: 'assets/images/BKlogo.png',
        nameOfRestaurant: 'Burger King',
        typeOfKitchen: 'Американская кухня',
        timeOfDel: '10-20 минут',
        costOfDel: 'Доставка: 100 Р',
        dishes: [
          ProductEntity(
              nameOfProduct: 'Воппер',
              costOfProduct: 500,
              descriptionOfProduct:
              'Мягкая булочка и сочная мясо. По рецепту шефа Джимма'),
          ProductEntity(
              nameOfProduct: 'Воппер',
              costOfProduct: 500,
              descriptionOfProduct:
              'Мягкая булочка и сочная мясо. По рецепту шефа Джимма'),
        ]),
    const RestaurantEntity(
        image: 'assets/images/Rectangle.png',
        logo: 'assets/images/BKlogo.png',
        nameOfRestaurant: 'Burger King',
        typeOfKitchen: 'Американская кухня',
        timeOfDel: '15-20 минут',
        costOfDel: 'Доставка: 200 Р',
        dishes: [
          ProductEntity(
              nameOfProduct: 'Воппер',
              costOfProduct: 500,
              descriptionOfProduct:
              'Мягкая булочка и сочная мясо. По рецепту шефа Джимма'),
          ProductEntity(
              nameOfProduct: 'Воппер',
              costOfProduct: 500,
              descriptionOfProduct:
              'Мягкая булочка и сочная мясо. По рецепту шефа Джимма'),
        ]),
    const RestaurantEntity(
        image: 'assets/images/Rectangle.png',
        logo: 'assets/images/BKlogo.png',
        nameOfRestaurant: 'Burger King',
        typeOfKitchen: 'Американская кухня',
        timeOfDel: '15-30 минут',
        costOfDel: 'Доставка: 150 Р',
        dishes: [
          ProductEntity(
              nameOfProduct: 'Воппер',
              costOfProduct: 500,
              descriptionOfProduct:
              'Мягкая булочка и сочная мясо. По рецепту шефа Джимма'),
          ProductEntity(
              nameOfProduct: 'Воппер',
              costOfProduct: 500,
              descriptionOfProduct:
              'Мягкая булочка и сочная мясо. По рецепту шефа Джимма'),
        ]),
  ];
}

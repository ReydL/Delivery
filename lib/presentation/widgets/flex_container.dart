import 'package:delivery/domain/entities/product_entity.dart';
import 'package:delivery/presentation/features/restaurant/restaurant_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/cart/cart_bloc.dart';
import 'bottom_burger_sheet.dart';

class ColumnOfDishes extends StatelessWidget {
  final List<ProductEntity> dishes;
  ColumnOfDishes({Key? key, required this.dishes}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: buildDishes(dishes, context),
    );
  }
}

List<Widget> buildDishes(List<ProductEntity> dish, BuildContext context){
  var widgets =<Widget>[];
  if(dish.isNotEmpty){
    for (var i = 0; i < dish.length;i++){
      final theme = Theme.of(context);
       widgets.add(Container(
         color: theme.bottomNavigationBarTheme.backgroundColor,
         padding: const EdgeInsets.only(bottom: 15),
         margin: const EdgeInsets.only(bottom: 15),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
               width: 116,
               height: 83,
               margin: const EdgeInsets.only(right: 15),
               padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 12),
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage(dish[i].image ?? 'assets/images/NoImage.png'),
                   fit: BoxFit.cover,
                 ),
               ),
             ),
             Flexible(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Row(
                       children: [
                         Text(
                           dish[i].nameOfProduct,
                           style: theme.textTheme.bodyText1!
                               .copyWith(fontWeight: FontWeight.bold),
                         ),
                         const SizedBox(
                           width: 9,
                         ),
                         Text('${dish[i].costOfProduct}'),
                         const Text('  Р'),
                       ],
                     ),
                     Text(
                       dish[i].descriptionOfProduct,
                       maxLines: 3,
                       softWrap: true,
                       overflow: TextOverflow.fade,
                       style: theme.textTheme.subtitle1,
                     ),
                     const SizedBox(
                       height: 9,
                     ),
                     OutlinedButton(
                       style: OutlinedButton.styleFrom(
                         side: const BorderSide(color: Colors.black),
                         primary: Colors.black,
                         minimumSize: const Size(103, 39),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10),
                         ),
                         textStyle: const TextStyle(
                           fontFamily: 'Nunito',
                           fontSize: 16,
                         ),
                       ),
                       child: Text(
                         'Добавить',
                         style: theme.textTheme.bodyText1!
                             .copyWith(fontWeight: FontWeight.w400),
                       ),
                       onPressed: () => showModalBottomSheet(
                           shape: const RoundedRectangleBorder(
                               borderRadius: BorderRadius.vertical(
                                 top: Radius.circular(16),
                               )),
                           context: context,
                           builder: (context) => BuildBurgerBottomSheet(dish: dish[i],))),
                     
                   ],
                 )),
           ],
         ),
       ));
    }
  }
  return widgets;
}


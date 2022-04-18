import 'package:delivery/domain/entities/product_entity.dart';
import 'package:delivery/presentation/features/cart/cart_event.dart';
import 'package:delivery/presentation/features/restaurant/restaurant_bloc.dart';
import 'package:delivery/presentation/features/restaurant/restaurant_event.dart';
import 'package:delivery/presentation/features/restaurant/restaurant_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/cart/cart_bloc.dart';
import '../features/cart/cart_state.dart';

 class BuildBurgerBottomSheet extends StatefulWidget {
   final ProductEntity dish;
  const BuildBurgerBottomSheet({Key? key,required this.dish}) : super(key: key);

  @override
  State<BuildBurgerBottomSheet> createState() => _BuildBurgerBottomSheetState();
}

class _BuildBurgerBottomSheetState extends State<BuildBurgerBottomSheet> {
  @override
  Widget build(BuildContext context) {
    const bool value = false;
    final theme = Theme.of(context);
    final bloc = BlocProvider.of<CartBloc>(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 57,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20,top: 15,bottom: 15,right: 15),

                alignment: Alignment.center,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: Colors.black12,width: 1),
                ),
                child: IconButton(
                  icon:const Icon(Icons.add,),
                  onPressed: (){},
                ),
              ),
              const Text('3'),
              Container(
                margin: const EdgeInsets.only(left: 20,top: 15,bottom: 15,right: 15),

                alignment: Alignment.center,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: Colors.black12,width: 1),
                ),
                child: IconButton(
                  icon: const Icon(Icons.remove,),
                  onPressed: (){},
                ),
              ),
              Expanded(child:const SizedBox()),
              BlocBuilder<CartBloc,CartState>(

                builder: (context,state) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: theme.primaryColor,
                      onPrimary: theme.backgroundColor,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                  onPressed: (){
                    bloc.add(AddToCartEvent(product: widget.dish));
                    Navigator.pop(context);

                  },
                  child:  Text('Добавить за ${widget.dish.costOfProduct} Р'),
                ),
              ),

            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 179,
            width: double.infinity,
            decoration:  BoxDecoration(
              image:  DecorationImage(
                  image:  AssetImage(widget.dish.image ?? 'assets/images/NoImage.png'),
                  fit: BoxFit.cover),
            ),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 44,
                      height: 44,
                      decoration:const BoxDecoration(
                        color: Colors.white70,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 widget.dish.nameOfProduct,
                  style: theme.textTheme.headline5),
                Text(widget.dish.descriptionOfProduct,
                  softWrap: true,
                  style: theme.textTheme.bodyText1),
                const SizedBox(height: 10,),
                Text('Добавьте или уберите ингридиенты', style: theme.textTheme.subtitle1),
                const SizedBox(height: 10,),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  value: value,
                  onChanged: (value) {},
                  title: const Text('Кетчуп + 27 Р', style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Nunito',
                  ),
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}


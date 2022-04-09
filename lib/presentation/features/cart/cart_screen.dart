import 'package:delivery/presentation/features/cart/cart_bloc.dart';
import 'package:delivery/presentation/features/cart/cart_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/product_entity.dart';
import 'cart_state.dart';

class CartScreen extends StatefulWidget {
  
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<CartBloc>(context);
    bloc..add(CartLoadedEvent());
    final theme = Theme.of(context);
    return BlocBuilder<CartBloc,CartState>(
      builder: (context, state) {
        if(state is CartLoadingState){
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
       if(state is CartLoadedState){
         return Scaffold(
           backgroundColor: theme.backgroundColor,
           appBar: AppBar(
             backgroundColor: theme.backgroundColor,
             title: Column(
               children: [
                 Align(
                   alignment: Alignment.center,
                   child: Text(
                     'Ваша корзина',
                     style: theme.textTheme.headline5,
                   ),
                 ),
                 Align(
                   alignment: Alignment.center,
                   child: Text(
                     '${state.totalPrice} Р',
                     style: theme.textTheme.headline5,
                   ),
                 ),
               ],
             ),
           ),
           body: ListView(
             children: buildCartItems(state.products,bloc),
           ),
         );}
       return Container();
       }

    );

  }
  List<Widget> buildCartItems(List<ProductEntity> products, CartBloc bloc) {
    final widgets = <Widget>[];
    if(products.isNotEmpty){
      for(var i = 0; i < products.length; i++){
        widgets.add(
            Card(
              child: Row(
                children: [
                  Container(
                    width: 55,
                    height: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(products[i].image ?? 'assets/images/NoImage.png'),
                        fit: BoxFit.cover,
                      ),
                  ),
                  ),
                  const SizedBox(width: 10,),
                  Text(products[i].nameOfProduct),
                  const SizedBox(width: 20,),
                  Text('${products[i].costOfProduct} Р'),
                  IconButton(onPressed: (){
                    BlocProvider.of<CartBloc>(context)..add(RemoveFromCartEvent(product: products[i]));
                  }, icon: const Icon(Icons.delete_rounded))
                ],
              ),
            )
        );
      }
    }
    return widgets;
 }
}

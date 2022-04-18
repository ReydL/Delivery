import 'package:delivery/presentation/features/cart/cart_bloc.dart';
import 'package:delivery/presentation/features/cart/cart_event.dart';
import 'package:flutter/cupertino.dart';
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
    return BlocBuilder<CartBloc, CartState>(builder: (context, state) {
      if (state is CartLoadingState) {
        return const Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      }
      if (state is CartLoadedState) {
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
          floatingActionButton: Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.infinity,
              height: 65,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: theme.primaryColor,
                  onPrimary: theme.backgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
                onPressed: (){},
                child: const Text('Продолжить'),
              ),
            ),
          ),
          body: ListView(
            children: buildCartItems(state.products, bloc),
          ),
        );
      }
      return Container();
    });
  }

  List<Widget> buildCartItems(List<ProductEntity> products, CartBloc bloc) {
    final theme = Theme.of(context);
    final widgets = <Widget>[];
    if (products.isNotEmpty) {
      for (var i = 0; i < products.length; i++) {
        widgets.add(Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: SizedBox(
            width: double.infinity,
            height: 65,
            child: Card(
              child: Row(
                children: [
                  Container(
                    width: 55,
                    height: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            products[i].image ?? 'assets/images/NoImage.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    products[i].nameOfProduct,
                    style: theme.textTheme.bodyText1!
                        .copyWith(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text(
                      '${products[i].costOfProduct} Р',
                      style: theme.textTheme.bodyText1!.copyWith(
                          fontWeight: FontWeight.w600, color: Colors.grey),
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 0.1),

                    ),
                    child: IconButton(
                        onPressed: () {
                          bloc
                            ..add(RemoveFromCartEvent(product: products[i]));
                        },
                        icon: const Icon(Icons.delete_rounded)),
                  )
                ],
              ),
            ),
          ),
        ));
      }
    }
    return widgets;
  }
}

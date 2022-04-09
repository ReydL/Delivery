import 'package:delivery/data/repositories/cart_repository.dart';
import 'package:delivery/presentation/features/cart/cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cart_event.dart';

class CartBloc extends Bloc<CartEvent, CartState>{
  final CartRepository cartRepository = CartRepository();
  CartBloc() : super(CartInitialState()){
  on<CartLoadedEvent>((event, emit)  {
      if (state is CartInitialState){
        final products =  cartRepository.products;
        print(products);
        final totalPrice = cartRepository.getTotalPrice();
        emit(CartLoadedState(products: products, totalPrice: totalPrice));
        print('cart initial state');
      }
      if(state is CartLoadedState){
        emit(state);
        print('cartloaded state');
      }
  },
  );
  on<AddToCartEvent>((event, emit) {
    cartRepository.addProductToCart(event.product);
    emit(CartInitialState());
  }
  );
  }
}
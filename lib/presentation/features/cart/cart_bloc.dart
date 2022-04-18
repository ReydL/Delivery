import 'package:delivery/data/repositories/cart_repository.dart';
import 'package:delivery/presentation/features/cart/cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cart_event.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepository _cartRepository;
  CartBloc({required CartRepository cartRepository})
      : _cartRepository = cartRepository,
        super(CartInitialState()) {
    on<CartLoadedEvent>(
      (event, emit) {
        if (state is CartInitialState) {
          final products = _cartRepository.products;

          final totalPrice = _cartRepository.getTotalPrice();
          emit(CartLoadedState(products: products, totalPrice: totalPrice));
        }
        if (state is CartLoadedState) {
          emit(state);
        }
      },
    );
    on<AddToCartEvent>((event, emit) {
      _cartRepository.addProductToCart(event.product);
      emit(CartInitialState());
    });

    on<RemoveFromCartEvent>((event, emit) {

      emit(CartLoadingState());
      _cartRepository.removeProductFromCart(event.product);
      final products = _cartRepository.products;
      final totalPrice = _cartRepository.getTotalPrice();
      emit(CartLoadedState(products: products, totalPrice: totalPrice));
    });
  }
}

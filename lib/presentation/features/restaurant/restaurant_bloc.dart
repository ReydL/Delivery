
import 'package:delivery/data/repositories/cart_repository.dart';
import 'package:delivery/presentation/features/restaurant/restaurant_event.dart';
import 'package:delivery/presentation/features/restaurant/restaurant_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RestaurantBloc extends Bloc<RestaurantEvent, RestaurantState>{

  final CartRepository cartRepository = CartRepository();
  RestaurantBloc() : super(RestaurantInitalState()){
    on<RestaurantAddToCartEvent>((event, emit) async{
      await cartRepository.addProductToCart(event.product);
      emit(state);
    });
  }

}
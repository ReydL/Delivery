import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum NavbarItem { map, search, home, profile, cart }

class NavigationState extends Equatable {
  final NavbarItem navbarItem;
  final int index;

  const NavigationState(this.navbarItem, this.index);

  @override
  List<Object> get props => [this.navbarItem, this.index];
}

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState(NavbarItem.home, 2));

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.map:
        emit(const NavigationState(NavbarItem.map, 0));
        break;
      case NavbarItem.search:
        emit(const NavigationState(NavbarItem.search, 1));
        break;
      case NavbarItem.home:
        emit(const NavigationState(NavbarItem.home, 2));
        break;
      case NavbarItem.profile:
        emit(const NavigationState(NavbarItem.profile, 3));
        break;
      case NavbarItem.cart:
        emit(const NavigationState(NavbarItem.cart, 4));
        break;
    }
  }
}
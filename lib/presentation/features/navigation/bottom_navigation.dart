import 'package:delivery/presentation/features/cart/cart_bloc.dart';
import 'package:delivery/presentation/features/cart/cart_event.dart';
import 'package:delivery/presentation/features/cart/cart_screen.dart';
import 'package:delivery/presentation/features/home/main_screen.dart';
import 'package:delivery/presentation/features/map/map_screen.dart';
import 'package:delivery/presentation/features/navigation/navigation_cubit.dart';
import 'package:delivery/presentation/features/profile/profile_screen.dart';
import 'package:delivery/presentation/features/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bloc = BlocProvider.of<NavigationCubit>(context);
    return Scaffold(
      bottomNavigationBar: BlocBuilder<NavigationCubit,NavigationState>(
        builder: (context, state) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            selectedItemColor: theme.bottomNavigationBarTheme.selectedItemColor,
            unselectedItemColor: theme.bottomNavigationBarTheme.unselectedItemColor,
            showUnselectedLabels: false,
            currentIndex: state.index,
            onTap: (index) {
              if (index == 0){
                bloc.getNavBarItem(NavbarItem.map);
              } else if(index == 1){
                bloc.getNavBarItem(NavbarItem.search);
              } else if(index == 2){
                bloc.getNavBarItem(NavbarItem.home);
              } else if(index == 3){
                bloc.getNavBarItem(NavbarItem.profile);
              } else if(index == 4){
                bloc.getNavBarItem(NavbarItem.cart);
              }
            },
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.map_outlined),
                label: 'Map',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions_outlined),
                label: 'Profile',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Cart',
              ),
            ],
          );
        } ),

      body: BlocBuilder<NavigationCubit,NavigationState>(
        builder: (context, state) {
          if (state.navbarItem == NavbarItem.home) {
            return const MainScreen();
          } else if (state.navbarItem == NavbarItem.map) {
            return const MapScreen();
          } else if (state.navbarItem == NavbarItem.profile) {
            return const ProfileScreen();
          } else if (state.navbarItem == NavbarItem.search) {
            return const SearchScreen();
          } else if (state.navbarItem == NavbarItem.cart) {
            return const CartScreen();
          }
          return Container();
        }
      )

    );
  }
}

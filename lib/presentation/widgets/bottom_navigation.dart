import 'package:delivery/presentation/features/cart/cart_bloc.dart';
import 'package:delivery/presentation/features/cart/cart_event.dart';
import 'package:delivery/presentation/features/cart/cart_screen.dart';
import 'package:delivery/presentation/features/home/main_screen.dart';
import 'package:delivery/presentation/features/map/map_screen.dart';
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
  int currentIndex = 2;
  final screens = [
    const MapScreen(),
    const SearchScreen(),
    const MainScreen(),
    const ProfileScreen(),
     BlocProvider<CartBloc>(
         create: (context) => CartBloc()..add(CartLoadedEvent()),
         child: const  CartScreen()),
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        selectedItemColor: theme.bottomNavigationBarTheme.selectedItemColor,
        unselectedItemColor: theme.bottomNavigationBarTheme.unselectedItemColor,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
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
      ),
      body: screens[currentIndex],
      // IndexedStack(
      //   index: currentIndex,
      //   children: screens,
      // ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:greengrocer/src/features/cart/cart_screen.dart';
import 'package:greengrocer/src/features/profile/profile_screen.dart';

import '../products/products_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          showUnselectedLabels: true,
          backgroundColor: Colors.green,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withAlpha(100),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Carrinho",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: "Pedidos",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Perfil",
            ),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
              pageController.jumpToPage(index);
            });
          },
        ),
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: [
            ProductsScreen(
              onCartPressed: () {
                setState(() {
                  pageController.jumpToPage(1);
                });
              },
            ),
            const CartScreen(),
            Container(color: Colors.amber),
            const ProfileScreen(),
          ],
          onPageChanged: (pageIndex) {
            setState(() {
              currentIndex = pageIndex;
            });
          },
        )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:the_aaliyahs_collection/features/shops/screens/home/widgets/home.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int selectedItem = 0;

  List<Widget> screens = [
    HomeScreen(),
    // ProductListingScreen(),
    // CartScreen(),
    // WishlistScreen(),
    // AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedItem],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          currentIndex: selectedItem,
          onTap: (value) {
            setState(() {
              selectedItem = value;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.store), label: "Shop"),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Wishlist",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ],
          type: BottomNavigationBarType.fixed,
          elevation: 0,
        ),
      ),
    );
  }
}

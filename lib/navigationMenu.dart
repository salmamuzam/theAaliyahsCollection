import 'package:flutter/material.dart';
import 'package:the_aaliyahs_collection/features/shops/screens/home/widgets/home.dart';

/// NavigationMenu provides a bottom navigation bar
/// to switch between main sections like Home, Shop, Cart, Wishlist, and Account
class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  // Keeps track of the currently selected tab index
  int selectedItem = 0;

  // List of screens to display for each tab
  List<Widget> screens = [
    HomeScreen(),             // Home tab
    // ProductListingScreen(), // Shop tab (to be added)
    // CartScreen(),           // Cart tab (to be added)
    // WishlistScreen(),       // Wishlist tab (to be added)
    // AccountScreen(),        // Account tab (to be added)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Display the screen corresponding to the selected tab
      body: screens[selectedItem],

      // Bottom navigation bar
      bottomNavigationBar: SizedBox(
        height: 80, // height of the bottom nav
        child: BottomNavigationBar(
          currentIndex: selectedItem, // highlight the selected tab
          onTap: (value) {
            setState(() {
              // Update the selected tab
              selectedItem = value;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.store), label: "Shop"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Wishlist"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ],
          type: BottomNavigationBarType.fixed, // all items are shown
          elevation: 0, // remove shadow
        ),
      ),
    );
  }
}

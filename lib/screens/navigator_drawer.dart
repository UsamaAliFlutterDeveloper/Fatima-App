import 'package:flutter/material.dart';
import 'package:myapp/screens/products_category_screen.dart';
import 'package:myapp/screens/shop_now_listview_screen.dart';

import 'horizontal_list_view_screen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 138, 2, 2),
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text(
                  'Our Products',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HorizontalListViewItem(),
                      ));
                },
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.cabin),
                  iconSize: 30,
                ),
              ),
              ListTile(
                title: const Text(
                  'Product Categories',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductScreen(),
                      ));
                },
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart),
                  iconSize: 30,
                ),
              ),
              ListTile(
                title: const Text(
                  'Shop Now',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ShopNowListViewScreen(),
                      ));
                },
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shop),
                  iconSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

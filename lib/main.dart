import 'package:flutter/material.dart';
import 'package:myapp/screens/log_in_screen.dart';
import 'package:myapp/screens/products_category_screen.dart';
import 'package:myapp/screens/service_product_category_screen.dart';
import 'package:myapp/screens/shop_now_listview_screen.dart';
import 'package:myapp/screens/splash_screen.dart';

import 'api_examples/post_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: ShopNowListViewScreen());
  }
}

import 'package:flutter/material.dart';

import '../modelclasses/product_category_model.dart';
import '../widgets/Product_category_list.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({
    super.key,
  });

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<ProductCategory> productlist = [
    ProductCategory(
      image: "assets/images/nail.png",
      title: "Nail Paint",
      subtitle: "150 items",
      iconss: const Icon(Icons.arrow_forward_ios),
    ),
    ProductCategory(
      image: "assets/images/flowerbooky.png",
      title: "Flower",
      subtitle: "74 items",
      iconss: const Icon(Icons.arrow_forward_ios),
    ),
    ProductCategory(
      image: "assets/images/gifts.png",
      title: "Gifts packages",
      subtitle: "53 items",
      iconss: const Icon(Icons.arrow_forward_ios),
    ),
    ProductCategory(
      image: "assets/images/nail.png",
      title: "Nail Paint",
      subtitle: "150 items",
      iconss: const Icon(Icons.arrow_forward_ios),
    ),
    ProductCategory(
      image: "assets/images/flowerbooky.png",
      title: "Flower",
      subtitle: "74 items",
      iconss: const Icon(Icons.arrow_forward_ios),
    ),
    ProductCategory(
      image: "assets/images/gifts.png",
      title: "Gifts Packages",
      subtitle: "53 items",
      iconss: const Icon(Icons.arrow_forward_ios),
    ),
    ProductCategory(
      image: "assets/images/nail.png",
      title: "Nail Paint",
      subtitle: "150 items",
      iconss: const Icon(Icons.arrow_forward_ios),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              title: const Text(
                "Product Categories",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              leading: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  ),
                )
              ],
              elevation: 1,
              toolbarHeight: 80,
            ),
            resizeToAvoidBottomInset: false,
            body: Column(children: [
              // const Divider(
              //   thickness: 1,
              //   color: Colors.grey,
              // ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: productlist.length,
                    itemBuilder: (BuildContext context, int index) {
                      ProductCategory detail = productlist[index];
                      return ProductCategoryScreen(
                        detailofproduct: detail,
                      );
                    }),
              ),
            ])));
  }
}

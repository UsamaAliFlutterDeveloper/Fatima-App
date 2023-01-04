// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../modelclasses/product_category_model.dart';

class ProductCategoryScreen extends StatefulWidget {
  final ProductCategory detailofproduct;
  const ProductCategoryScreen({super.key, required this.detailofproduct});

  @override
  State<ProductCategoryScreen> createState() => _ProductCategoryScreenState();
}

class _ProductCategoryScreenState extends State<ProductCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
          Positioned(
            top: -12,
            child: Container(
              height: 100,
              width: 100,
              child: Image.asset(
                widget.detailofproduct.image,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 110,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.detailofproduct.title,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.detailofproduct.subtitle,
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          Positioned(
              left: 320,
              top: 25,
              child: IconButton(
                  onPressed: () {}, icon: widget.detailofproduct.iconss)),
        ],
      ),
    );
  }
}

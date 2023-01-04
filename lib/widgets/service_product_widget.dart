// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myapp/modelclasses/service_category.dart';



class ServiceProductCategory extends StatefulWidget {
  final ServiceProductCategoryModel servicedetailproduct;
  const ServiceProductCategory({super.key, required this.servicedetailproduct});

  @override
  State<ServiceProductCategory> createState() => _ServiceProductCategoryState();
}

class _ServiceProductCategoryState extends State<ServiceProductCategory> {
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
                widget.servicedetailproduct.image,
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
                  widget.servicedetailproduct.title,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.servicedetailproduct.subtitle,
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
                  onPressed: () {}, icon: widget.servicedetailproduct.iconss)),
        ],
      ),
    );
  }
}

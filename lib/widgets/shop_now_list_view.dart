import 'package:flutter/material.dart';
import '../modelclasses/shop_now_model_class.dart';

class ShopNowListView extends StatefulWidget {
  final ShopNowModel detail;
  const ShopNowListView({super.key, required this.detail});

  @override
  State<ShopNowListView> createState() => _ShopNowListViewState();
}

class _ShopNowListViewState extends State<ShopNowListView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 80,
          width: 80,
          color: Colors.white,
          child: Image.asset(widget.detail.image),
        ),
        RichText(
            text: TextSpan(
                text: widget.detail.title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
                children: [
              TextSpan(
                text: widget.detail.subtitle,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              )
            ]))
      ],
    );
  }
}

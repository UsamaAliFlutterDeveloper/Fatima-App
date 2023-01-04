import 'package:flutter/material.dart';

import '../modelclasses/grid_view_model.dart';

class GridViewScreenBuilder extends StatefulWidget {
  final GridViewModel detail;
  const GridViewScreenBuilder({super.key, required this.detail});

  @override
  State<GridViewScreenBuilder> createState() => _GridViewScreenBuilderState();
}

class _GridViewScreenBuilderState extends State<GridViewScreenBuilder> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: const Color.fromARGB(255, 230, 228, 228),
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  widget.detail.image,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 100,
                  child: Column(
                    children: [
                      Text(
                        widget.detail.title,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      Text(
                        "\nAED ${widget.detail.subtitle}",
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const Align(
          alignment: Alignment.topRight,
          child: Icon(
            Icons.favorite_border,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}

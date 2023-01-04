import 'package:flutter/material.dart';

import '../modelclasses/list_view_model_class.dart';

class ListViewWidget extends StatefulWidget {
  final ListViewModel detail;
  const ListViewWidget({super.key, required this.detail});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          width: 100,
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

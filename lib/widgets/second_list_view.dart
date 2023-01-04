import 'package:flutter/material.dart';

class SecondListViewWidget extends StatefulWidget {
  // ignore: non_constant_identifier_names
  final SecondListViewWidgetdetail;

  const SecondListViewWidget(
      // ignore: non_constant_identifier_names
      {super.key,
      required this.SecondListViewWidgetdetail});

  @override
  State<SecondListViewWidget> createState() => _SecondListViewWidgetState();
}

class _SecondListViewWidgetState extends State<SecondListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 110,
          width: 360,
          color: Colors.white,
        ),
        Container(
          width: 97,
          height: 110,
          child: Image.asset(widget.SecondListViewWidgetdetail.image),
        ),
        Positioned(
          top: 8,
          left: 110,
          child: Container(
            height: 90,
            width: 300,
            child: Text(
              widget.SecondListViewWidgetdetail.title,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
        Positioned(
          top: 30,
          left: 110,
          child: Container(
            height: 120,
            width: 300,
            child: RichText(
                text: TextSpan(
                    text: widget.SecondListViewWidgetdetail.subtitle,
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                    children: [
                  TextSpan(
                    text: widget.SecondListViewWidgetdetail.price,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ])),
          ),
        )
      ],
    );
  }
}

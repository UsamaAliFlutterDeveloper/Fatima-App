import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StackTestScreen extends StatefulWidget {
  const StackTestScreen({super.key});

  @override
  State<StackTestScreen> createState() => _StackTestScreenState();
}

class _StackTestScreenState extends State<StackTestScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        Blur(
          blur: 2,
          colorOpacity: .3,
          overlay: const Text(
            "Flutter Developer",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          blurColor: Colors.black,
          child: Container(
              width: size.width,
              height: 175,
              child: Image.asset("assets/images/Background.png")),
        ),
        Positioned(
            left: 50,
            child: SvgPicture.asset(
              "assets/svgs/whatsapp.svg",
              color: Colors.white,
              height: 100,
              width: 100,
            ))
      ],
    )));
  }
}

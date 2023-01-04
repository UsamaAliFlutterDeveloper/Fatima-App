import 'package:flutter/material.dart';
import 'package:myapp/screens/forgot_password_screen.dart';
import 'package:myapp/screens/sign_up_screen.dart';

import 'log_in_screen.dart';

class SelectiveScreen extends StatefulWidget {
  const SelectiveScreen({super.key});

  @override
  State<SelectiveScreen> createState() => _SelectiveScreenState();
}

class _SelectiveScreenState extends State<SelectiveScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Flexible(child: Center()),
            Column(
              children: [
                RichText(
                  text: const TextSpan(
                    text: "Welcome to ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 139, 139, 139)),
                    children: [
                      TextSpan(
                          text: "AYS",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 100, 100, 100))),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Explore Us",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 139, 139, 139)),
                ),
              ],
            ),
            const Flexible(child: Center()),
            Container(
                height: 216,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Image.asset("assets/images/Background.png")),
            // const SizedBox(
            //   height: 15,
            // ),
            const Flexible(child: Center()),
            Container(
              height: 48,
              width: 245,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                      // begin: Alignment.bottomRight,
                      // end: Alignment.topLeft,
                      colors: [
                        Color.fromARGB(255, 255, 196, 108),
                        Color.fromARGB(255, 253, 106, 155),
                      ])),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ));
                },
                child: const Text(
                  "Log in",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            TextButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ));
                }),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 139, 139, 139)),
                )),
            const Flexible(child: Center()),
            TextButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotPasswordScreen(),
                      ));
                }),
                child: const Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 139, 139, 139),
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                )),
            const Flexible(child: Center()),
          ],
        ),
      ),
    );
  }
}

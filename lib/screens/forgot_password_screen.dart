import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    size: 40,
                  )),
              const Flexible(child: Center()),
              RichText(
                  text: const TextSpan(
                      text: "Forgot Password\n\n",
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      children: [
                    TextSpan(
                        text:
                            "Please enter your email address. you will\nreceive a link to create a new password\nvia email.",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey)),
                  ])),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    label: const Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    labelStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide:
                          const BorderSide(width: 1.3, color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide:
                          const BorderSide(width: 1.3, color: Colors.grey),
                    )),
              ),
              Align(
                alignment: Alignment.AlignmentbottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, right: 15),
                  child: FloatingActionButton(
                      onPressed: () {},
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                begin: Alignment.AlignmentbottomRight,
                                end: Alignment.topLeft,
                                colors: [
                                  Color.fromARGB(255, 255, 196, 108),
                                  Color.fromARGB(255, 253, 106, 155),
                                ])),
                        child: const Icon(
                          Icons.arrow_forward,
                          size: 30,
                        ),
                      )),
                ),
              ),
              const Flexible(
                flex: 4,
                child: Center(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

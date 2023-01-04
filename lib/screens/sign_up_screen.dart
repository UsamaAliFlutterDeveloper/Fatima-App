import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Padding(
                padding: const EdgeInsets.all(10.0),
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
                            size: 30,
                          )),
                      const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const Flexible(
                        flex: 1,
                        child: Center(),
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 60,
                              width: 355,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    label: const Text(
                                      "Email",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 1.3, color: Colors.grey),
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      borderSide: const BorderSide(
                                          width: 1.3, color: Colors.grey),
                                    )),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 60,
                              width: 355,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    label: const Text(
                                      "Password",
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
                                      borderSide: const BorderSide(
                                          width: 1.3, color: Colors.grey),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      borderSide: const BorderSide(
                                          width: 1.3, color: Colors.grey),
                                    )),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 60,
                              width: 355,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    label: const Text(
                                      "Phone",
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
                                      borderSide: const BorderSide(
                                          width: 1.3, color: Colors.grey),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      borderSide: const BorderSide(
                                          width: 1.3, color: Colors.grey),
                                    )),
                              ),
                            ),
                            Align(
                              alignment: Alignment.AlignmentbottomRight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, right: 15),
                                child: FloatingActionButton(
                                    onPressed: () {},
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                              begin: Alignment
                                                  .AlignmentbottomRight,
                                              end: Alignment.topLeft,
                                              colors: [
                                                Color.fromARGB(
                                                    255, 255, 196, 108),
                                                Color.fromARGB(
                                                    255, 253, 106, 155),
                                              ])),
                                      child: const Icon(
                                        Icons.arrow_forward,
                                        size: 30,
                                      ),
                                    )),
                              ),
                            )
                          ]),
                      const Flexible(child: Center()),
                      const Flexible(child: Center()),
                      const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Already have account? Log In",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )),
                      const Flexible(child: Center()),
                    ]))));
  }
}

import 'package:flutter/material.dart';

import 'forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey();
  String pattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Column(
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
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: const Text(
                "Login",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 355,
                    child: TextFormField(
                      validator: (input) {
                        RegExp regex = RegExp(pattern);
                        if (input!.isEmpty) {
                          return 'please enter something';
                        } else if (input.length < 8) {
                          return "please enter at least 8 digits";
                        } else if (!regex.hasMatch(input)) {
                          return "please enter a valid email";
                        }
                        return 'null';
                      },
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          label: const Text(
                            "Name",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1.3,
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
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
                      validator: (input) {
                        RegExp regex = RegExp(pattern);
                        if (input!.isEmpty) {
                          return 'please enter something';
                        } else if (input.length < 8) {
                          return "please enter at least 8 digits";
                        } else if (!regex.hasMatch(input)) {
                          return "please enter a valid email";
                        }
                        return 'null';
                      },
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
                  Align(
                    alignment: Alignment.AlignmentbottomRight,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ForgotPasswordScreen(),
                              ));
                        },
                        child: const Text(
                          "Forgot your password?",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 131, 131, 131),
                          ),
                        )),
                  ),
                  Align(
                    alignment: Alignment.AlignmentbottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, right: 15),
                      child: FloatingActionButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {}
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) =>
                            //           const HorizontalListViewItem(),
                            //     ));
                          },
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
                  // const SizedBox(
                  //   height: 0,
                  // ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xffF4F5F7),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(100, 100))),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 140,
                        top: 60,
                        child: const Text(
                          "Login with Social",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Positioned(
                        left: 100,
                        top: 100,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/fb.png"))),
                        ),
                      ),
                      Positioned(
                        top: 100,
                        left: 200,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/mail.png"))),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

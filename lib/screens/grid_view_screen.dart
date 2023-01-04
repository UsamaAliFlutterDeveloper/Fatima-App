import 'package:flutter/material.dart';

import '../modelclasses/grid_view_model.dart';
import '../Widgets/grid_view_widget.dart';

class GirdViewScreen extends StatefulWidget {
  const GirdViewScreen({super.key});

  @override
  State<GirdViewScreen> createState() => _GirdViewScreenState();
}

class _GirdViewScreenState extends State<GirdViewScreen> {
  List<GridViewModel> mylist = [
    GridViewModel(
      image: "assets/images/ribbonflower.png",
      title: "felicity Expressions",
      subtitle: "166",
    ),
    GridViewModel(
      image: "assets/images/ribbonflower.png",
      title: "Bloom in Love",
      subtitle: "520",
    ),
    GridViewModel(
      image: "assets/images/ribbonflower.png",
      title: "felicity Expressions",
      subtitle: "166",
    ),
    GridViewModel(
      image: "assets/images/ribbonflower.png",
      title: "felicity Expressions",
      subtitle: "166",
    ),
    GridViewModel(
      image: "assets/images/ribbonflower.png",
      title: "felicity Expressions",
      subtitle: "166",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
              color: Colors.black,
              iconSize: 30,
            )
          ],
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.black,
              )),
          title: const Text(
            "Flower Aura",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xff5D5D5D),
                        Color(0xff404040),
                        Color(0xff464646),
                      ],
                    ))),
                Positioned(
                  top: 20,
                  left: 30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        scale: 1.1,
                      ),
                      const Text(
                        "Flower Aura",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 170,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/images/whatsapps.png",
                            scale: 1.3,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "+971-000-2145-09",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/images/phones.png",
                            scale: 1.3,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "+971-000-2145-00",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/images/Group.png",
                            scale: 1.3,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 25),
                            child: Text(
                              "Map Direction",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: const Divider(color: Colors.black, height: 3),
                  ),
                ),
                const Text(
                  "Products",
                  style: TextStyle(fontSize: 18),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Divider(color: Colors.black, height: 3),
                  ),
                )
              ],
            ),
            Expanded(
              child: GridView.count(
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 15,
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  shrinkWrap: true,
                  children: List.generate(mylist.length, (index) {
                    return GridViewScreenBuilder(
                      detail: mylist[index],
                    );
                  })),
            ),
          ],
        ),
      ),
    );
  }
}

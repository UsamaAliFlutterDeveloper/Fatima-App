import 'package:flutter/material.dart';
import 'package:myapp/Widgets/shop_now_list_view_second.dart';

import '../modelclasses/shop_now_model_class.dart';
import '../modelclasses/shop_now_second_model.dart';
import '../Widgets/shop_now_list_view.dart';

class ShopNowListViewScreen extends StatefulWidget {
  const ShopNowListViewScreen({super.key});

  @override
  State<ShopNowListViewScreen> createState() => _ShopNowListViewScreenState();
}

class _ShopNowListViewScreenState extends State<ShopNowListViewScreen> {
  List<ShopNowModel> secondtriplist = [
    ShopNowModel(
      image: "assets/images/bearflower.png",
      title: "\nFlower\n",
      subtitle: "200 Items\n",
    ),
    ShopNowModel(
      image: "assets/images/choclates.png",
      title: "\nChoclates\n",
      subtitle: "80 Items\n",
    ),
    ShopNowModel(
      image: "assets/images/gifts.png",
      title: "\nGifts\n",
      subtitle: "75 Items\n",
    ),
    ShopNowModel(
      image: "assets/images/bearflower.png",
      title: "\nGifts\n",
      subtitle: "75 Items\n",
    ),
    ShopNowModel(
      image: "assets/images/bearflower.png",
      title: "\nGifts\n",
      subtitle: "75 Items\n",
    ),
    ShopNowModel(
      image: "assets/images/bearflower.png",
      title: "\nGifts\n",
      subtitle: "75 Items\n",
    ),
  ];
  List<ShopNowSecondModel> tripslist = [
    ShopNowSecondModel(
        image: "assets/images/nailpaint.png",
        title: "\nNail Paint\n",
        subtitle: "1500 Artists"),
    ShopNowSecondModel(
        image: "assets/images/hina.png",
        title: "\nHina\n",
        subtitle: "742 Artists"),
    ShopNowSecondModel(
        image: "assets/images/Makeup.png",
        title: "\nMake Up\n",
        subtitle: "53 Artists"),
    ShopNowSecondModel(
        image: "assets/images/kit.png",
        title: "\nNail Paint\n",
        subtitle: "1500 Artists"),
    ShopNowSecondModel(
        image: "assets/images/kit.png",
        title: "\nNail Paint\n",
        subtitle: "1500 Artists"),
    ShopNowSecondModel(
        image: "assets/images/kit.png",
        title: "\nNail Paint\n",
        subtitle: "1500 Artists"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                Container(
                  height: 255,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 138, 2, 2),
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(145))),
                ),
                Positioned(
                  top: 10,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.menu),
                    iconSize: 30,
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 300,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                    iconSize: 30,
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 340,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.lock),
                    iconSize: 30,
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 40,
                  child: Container(
                    width: 170,
                    child: RichText(
                        text: const TextSpan(
                            text: "valentine Offer\n\n",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            children: [
                          TextSpan(
                            text: "20% off in\nour All Products",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ),
                ),
                Positioned(
                  top: 160,
                  left: 40,
                  child: TextButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(width: 1.5, color: Colors.white),
                    ),
                    child: const Text(
                      "Shop Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 140,
                  child: Image.asset(
                    "assets/images/flowerbooky.png",
                    height: 290,
                    width: 290,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  RichText(
                      text: const TextSpan(
                          text: "Products ",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                          children: [
                        TextSpan(
                            text: "Categories",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black))
                      ])),
                  const Flexible(child: Center()),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View all",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Container(
                height: 145,
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 12,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: secondtriplist.length,
                  itemBuilder: (BuildContext context, int index) {
                    ShopNowModel detail = secondtriplist[index];
                    return ShopNowListView(
                      detail: detail,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  RichText(
                      text: const TextSpan(
                          text: "Service ",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                          children: [
                        TextSpan(
                            text: "Categories",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black))
                      ])),
                  const Flexible(child: Center()),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View all",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Container(
                height: 140,
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 12,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: tripslist.length,
                  itemBuilder: (BuildContext context, int index) {
                    ShopNowSecondModel detail = tripslist[index];
                    return ShopNowSecondListView(
                      detail: detail,
                    );
                  },
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 102,
                  width: 370,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    "assets/images/nailpolish.png",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

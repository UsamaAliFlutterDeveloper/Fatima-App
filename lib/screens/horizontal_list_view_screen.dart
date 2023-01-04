import 'package:flutter/material.dart';
import 'package:myapp/screens/products_category_screen.dart';
import 'package:myapp/screens/shop_now_listview_screen.dart';
import '../modelclasses/list_view_model_class.dart';
import '../modelclasses/second_list_view_model.dart';
import '../Widgets/list_view_builder_widget.dart';
import '../Widgets/second_list_view.dart';

class HorizontalListViewItem extends StatefulWidget {
  const HorizontalListViewItem({super.key});

  @override
  State<HorizontalListViewItem> createState() => _HorizontalListViewItemState();
}

class _HorizontalListViewItemState extends State<HorizontalListViewItem> {
  List<ListViewModel> tripslist = [
    ListViewModel(
        image: "assets/images/nailpaint.png",
        title: "Nail Paint\n",
        subtitle: "1500 Artists"),
    ListViewModel(
        image: "assets/images/hina.png",
        title: "Hina\n",
        subtitle: "742 Artists"),
    ListViewModel(
        image: "assets/images/Makeup.png",
        title: "Make Up\n",
        subtitle: "53 Artists"),
    ListViewModel(
        image: "assets/images/kit.png",
        title: "Nail Paint\n",
        subtitle: "1500 Artists"),
  ];
  List<SecondListView> secondtriplist = [
    SecondListView(
        image: "assets/images/flower.png",
        title: "Creative art Frame\n",
        subtitle:
            "Lorem ipsum elit eiusmod tempor\nut labore et dolore magna aliqua\n",
        price: "\nAED 150"),
    SecondListView(
        image: "assets/images/flower.png",
        title: "Creative art Frame\n",
        subtitle:
            "Lorem ipsum elit eiusmod tempor\nut labore et dolore magna aliqua\n",
        price: "\nAED 150")
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 138, 2, 2),
          toolbarHeight: 110,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(70),
            ),
          ),
          // leading: IconButton(
          //     onPressed: () {
          //       Scaffold.of(context).openDrawer();
          //       // Navigator.push(
          //       //     context,
          //       //     MaterialPageRoute(
          //       //       builder: (context) => DrawerScreen(),
          //       //     ));
          //     },
          //     icon: const Icon(Icons.menu)),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.lock))],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              // const DrawerHeader(
              //   decoration: BoxDecoration(
              //     color: Color.fromARGB(255, 138, 2, 2),
              //   ),
              //   child: Text('Drawer Header'),
              // ),

              UserAccountsDrawerHeader(
                accountName: const Text("Usama Ali"),
                accountEmail: const Text("usamaali1458@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    radius: 16.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        "assets/images/Myimage.jpg",
                        fit: BoxFit.fill,
                        width: 70,
                      ),
                    )),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 138, 2, 2),
                ),
              ),
              ListTile(
                title: const Text(
                  'Our Products',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HorizontalListViewItem(),
                      ));
                },
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.cabin),
                  iconSize: 30,
                ),
              ),
              ListTile(
                title: const Text(
                  'Product Categories',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductScreen(),
                      ));
                },
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart),
                  iconSize: 30,
                ),
              ),
              ListTile(
                title: const Text(
                  'Shop Now',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ShopNowListViewScreen(),
                      ));
                },
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shop),
                  iconSize: 30,
                ),
              ),
            ],
          ),
        ),

        //body start from here
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: ListView(
              children: [
                Container(
                  height: 60,
                  width: 350,
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        suffixIcon: const Icon(
                          Icons.search,
                          size: 30,
                          color: Color.fromARGB(255, 34, 34, 34),
                        ),
                        hintText: "Search ",
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1.3, color: Colors.grey),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              const BorderSide(width: 1.3, color: Colors.grey),
                        )),
                  ),
                ),
                //Text span widget
                Padding(
                  padding: const EdgeInsets.all(13.0),
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
                //first list view builder
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: tripslist.length,
                    itemBuilder: (BuildContext context, int index) {
                      ListViewModel detail = tripslist[index];
                      return ListViewWidget(
                        detail: detail,
                      );
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    "Best Sellers",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                // using stack added a two images
                Stack(
                  children: [
                    Container(
                      height: 115,
                      width: 370,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Image.asset(
                          "assets/images/Maskone.png",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Image.asset("assets/images/masktwo.png"),
                    )
                  ],
                ),
                // second part of listview start from here
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Row(
                    children: [
                      RichText(
                          text: const TextSpan(
                              text: "New ",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              children: [
                            TextSpan(
                                text: "Products",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey))
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
                // second listview builder
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: secondtriplist.length,
                    itemBuilder: (BuildContext context, int index) {
                      SecondListView detail = secondtriplist[index];
                      return SecondListViewWidget(
                        SecondListViewWidgetdetail: detail,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

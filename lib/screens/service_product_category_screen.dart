import 'package:flutter/material.dart';
import 'package:myapp/modelclasses/service_category.dart';

import '../widgets/service_product_widget.dart';

class ServiceProductCategoryScreen extends StatefulWidget {
  const ServiceProductCategoryScreen({super.key});

  @override
  State<ServiceProductCategoryScreen> createState() =>
      _ServiceProductCategoryScreenState();
}

class _ServiceProductCategoryScreenState
    extends State<ServiceProductCategoryScreen> {
  List<ServiceProductCategoryModel> serviceList = [
    ServiceProductCategoryModel(
      image: "assets/images/nailpaint.png",
      title: "Nail Paint",
      subtitle: "150 items",
      iconss: const Icon(Icons.arrow_forward_ios),
    ),
    ServiceProductCategoryModel(
      image: "assets/images/kit.png",
      title: "Modern Kit",
      subtitle: "74 items",
      iconss: const Icon(Icons.arrow_forward_ios),
    ),
    ServiceProductCategoryModel(
      image: "assets/images/girlhair.png",
      title: "Hair Cut",
      subtitle: "53 items",
      iconss: const Icon(Icons.arrow_forward_ios),
    ),
    ServiceProductCategoryModel(
      image: "assets/images/nailpaint.png",
      title: "Nail Paint Art",
      subtitle: "150 items",
      iconss: const Icon(Icons.arrow_forward_ios),
    ),
    ServiceProductCategoryModel(
      image: "assets/images/kit.png",
      title: "Hina Art",
      subtitle: "74 items",
      iconss: const Icon(Icons.arrow_forward_ios),
    ),
    ServiceProductCategoryModel(
      image: "assets/images/girlhair.png",
      title: "Hair Cut",
      subtitle: "53 items",
      iconss: const Icon(Icons.arrow_forward_ios),
    ),
    ServiceProductCategoryModel(
      image: "assets/images/kit.png",
      title: "Make Up Kit",
      subtitle: "150 items",
      iconss: const Icon(Icons.arrow_forward_ios),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              title: const Text(
                "Services Categories",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              leading: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  ),
                )
              ],
              elevation: 1,
              toolbarHeight: 80,
            ),
            resizeToAvoidBottomInset: false,
            body: Column(children: [
              // const Divider(
              //   thickness: 1,
              //   color: Colors.grey,
              // ),
              const SizedBox(
                height: 10,
              ),

              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: serviceList.length,
                    itemBuilder: (BuildContext context, int index) {
                      ServiceProductCategoryModel servicesdetail =
                          serviceList[index];
                      return ServiceProductCategory(
                        servicedetailproduct: servicesdetail,
                      );
                    }),
              ),
            ])));
  }
}

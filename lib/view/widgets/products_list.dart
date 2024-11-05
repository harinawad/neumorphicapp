import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neumorphicapp/controllers/my_products_controller.dart';

class ProductsList extends StatelessWidget {
  ProductsList({super.key});
  final MyProductsController myProductsController =
      Get.put(MyProductsController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(() {
        if (myProductsController.isLoding.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView.builder(
                itemCount: myProductsController.productslist.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Row(
                      children: [
                        Image.network(
                            width: 150,
                            "${myProductsController.productslist[index].thumbnail}"),
                        Column(
                          children: [
                            SizedBox(
                              width: 150,
                              height: 40,
                              child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600),
                                  "${myProductsController.productslist[index].title}"),
                            ),
                            SizedBox(
                              width: 150,
                              height: 20,
                              child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  myProductsController.productslist[index].description!),
                            ),
                            SizedBox(
                              width: 150,
                              child: Text(
                                  "${myProductsController.productslist[index].brand}"),
                            ),
                            SizedBox(
                              width: 150,
                              child: Text(
                                "${myProductsController.productslist[index].price!} SAR",
                                style: const TextStyle(
                                    color: Colors.green, fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //     child: ListTile(
                    //   leading: Image.network(
                    //       "${myProductsController.productslist[index].thumbnail}"),
                    //   title:
                    //       Text("${myProductsController.productslist[index].title}"),
                    //   subtitle: Text(
                    //       "${myProductsController.productslist[index].price!}"),
                    // )
                  );
                }),
          );
        }
      }),
    );
  }
}

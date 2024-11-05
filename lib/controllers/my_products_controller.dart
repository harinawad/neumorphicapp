import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:neumorphicapp/models/products_model.dart';

class MyProductsController extends GetxController {
  var isLoding = true.obs;
  var productslist = <Product>[].obs;
  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  Future fetchProducts() async {
    try {
      isLoding(true); // Set loading to true
      var response = await http.get(
        Uri.parse('https://dummyjson.com/products'),
      );

      if (response.statusCode == 200) {
        ProductsModel productsData =
            ProductsModel.fromJson(json.decode(response.body));
        update();

        for (var element in productsData.products!) {
            productslist.value.add(element);
          }
      } else {
        // Handle the error response here if needed
        print('Failed to fetch products. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching products: $e');
    } finally {
      isLoding(false); // Set loading to false
    }
  }
}

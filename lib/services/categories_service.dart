import 'dart:convert';
import 'package:http/http.dart';
import 'package:store_app/models/product_model.dart';

import '../helper/api.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
    Response response = await Api()
        .get(url: "https://fakestoreapi.com/products/category/:category_name");
    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productList;
  }
}

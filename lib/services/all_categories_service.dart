import 'dart:convert';
import 'package:http/http.dart';
import 'package:store_app/helper/api.dart';

class AllCategoriesService {
  Future<dynamic> getAllCateogries() async {
    Response response =
        await Api().get(url: "https://fakestoreapi.com/products/categories");

    List<dynamic> data = jsonDecode(response.body);
    return data;
  }
}

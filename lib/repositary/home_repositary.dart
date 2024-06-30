import 'package:dio/dio.dart';

class HomeRepositary {
  static Future<String> fetchRandomApi() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get("https://fakestoreapi.com/products");
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data["title"];
      } else {
        throw Exception();
      }
    } catch (_) {
      throw Exception();
    }
  }
}

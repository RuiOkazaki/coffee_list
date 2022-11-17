import 'package:coffee_list/model/coffee.dart';
import 'package:dio/dio.dart';

class CoffeeApiClient {
  Future<List<Coffee>?> fetchList() async {
    final dio = Dio();
    const url = 'https://api.sampleapis.com/coffee/hot';
    final response = await dio.get(url);

    if (response.statusCode != 200) {
      throw Exception(response.statusMessage);
    }

    try {
      final coffeeJson = response.data as List;
      final coffeeList = coffeeJson.map((e) => Coffee.fromJson(e)).toList();
      return coffeeList;
    } catch (e) {
      rethrow;
    }
  }
}

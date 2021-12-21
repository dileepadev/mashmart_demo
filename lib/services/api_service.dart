import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'package:mashmart/models/product_model.dart';

class ApiService {
  static var client = http.Client();

  static Future<List<Data>> fetchProducts ()async {
    var url = 'https://www.gorest.co.in/public-api/products';
    print(url);
    var response = await client.get(url);
    final ioc = new HttpClient();
    final http = new IOClient(ioc);
    var res = await http.get(url);

    if (res.statusCode == 200) {
      //print(res.body);
      List<Data> product = Product.fromJson(jsonDecode(res.body)).data;
      print(product);
      return product;
    } else {
      throw "Can't get subjects.";
    }

  }
}

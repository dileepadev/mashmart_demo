import 'package:get/state_manager.dart';
import 'package:mashmart/models/product_model.dart';
import 'package:mashmart/services/api_service.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  //Rx<Data> productList = Data().obs;
  List<Data> products;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try{
      isLoading(true);
      products = await ApiService.fetchProducts();
      if(products != null){

      }
    } finally {
      isLoading(false);
    }
  }
}
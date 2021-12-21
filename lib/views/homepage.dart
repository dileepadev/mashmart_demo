import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:mashmart/controllers/product_controller.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  final ProductController productController = Get.put(ProductController());
  final ScrollController scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(),
      appBar: AppBar(
        title: Image.asset(
          'assets/images/mashmart_logo_h.png',
          height: 60,
          width: 180,
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey.shade50,
        leading: IconButton(
          icon: Icon(Icons.menu_rounded),
          color: Colors.black87,
          onPressed: () {
            print("Drawer Menu Clicked");
            _key.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          Stack(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 30,
                    color: Colors.black87,
                  ),
                  onPressed: () {
                    print("Cart Clicked");
                  }),
              Positioned(
                top: 20,
                right: 4,
                child: Container(
                  height: 21,
                  width: 21,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.teal.shade700),
                  child: Center(
                    child: Text(
                      "0",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.notifications_rounded,
                    size: 30,
                    color: Colors.black87,
                  ),
                  onPressed: () {
                    print("Notifications Clicked");
                  }),
              Positioned(
                top: 20,
                right: 4,
                child: Container(
                  height: 21,
                  width: 21,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.teal.shade700),
                  child: Center(
                    child: Text(
                      "0",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Search for markets or products",
                            prefixIcon: Icon(Icons.search_rounded),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        onTap: () {
                          print("Search Box Tapped");
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Products",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.list_rounded,
                                    color: Colors.black87,
                                  ),
                                  onPressed: () {
                                    print("List Clicked");
                                  }),
                              IconButton(
                                  icon: Icon(
                                    Icons.grid_view,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                    print("Grid Clicked");
                                  }),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              if (productController.isLoading.value)
                return Center(child: CircularProgressIndicator());
              else
                print("Total Products = " +
                    productController.products.length.toString());
              return StaggeredGridView.countBuilder(
                crossAxisCount: 2,
                itemCount: productController.products.length,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 200,
                                  width: double.infinity,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Image.network(
                                    productController.products[index].image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                    right: 5,
                                    top: 5,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.teal.shade700,
                                      child: IconButton(
                                          icon: Icon(
                                            Icons.shopping_cart,
                                            size: 22,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            print("Add to Cart Clicked");
                                          }),
                                    )),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text(
                              productController.products[index].name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black87),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 8),
                            Text(
                              productController.products[index].price,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black54),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )),
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              );
            }),
          )
        ],
      ),
    );
  }
}

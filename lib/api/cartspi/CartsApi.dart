import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/api/cartspi/CartsController.dart';
import 'package:task1/api/cartspi/CartsModel.dart';

class CartsApi extends StatelessWidget {
  CartsController cartsController =Get.put(CartsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Api"),
      ),
      body: ListView.builder(
        itemCount: cartsController.carts.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
              child: Text(cartsController.carts[index].id.toString()),
              ),
              title: Text(cartsController.carts[index].title.toString()),
              subtitle: Text(cartsController.carts[index].discountedPrice.toString()),
              onTap: (){
                ProductModel product = ProductModel();
                product.id = 2;
                product.title = "hiii";
                print(product.toJson());
              },
            );
          },),
    );
  }
}

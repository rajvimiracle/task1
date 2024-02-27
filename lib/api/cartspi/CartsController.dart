import 'dart:convert';

import 'package:get/get.dart';
import 'package:task1/api/cartspi/CartsModel.dart';
import 'package:http/http.dart' as http;

class CartsController extends GetxController{
  String url = "https://dummyjson.com/carts";
  List<ProductModel> carts = [];
  RxBool isLoading = true.obs;

  @override
  void onInit() {
    createdata();
    super.onInit();
  }

  createdata() async{
    try{
      http.Response response = await http.get(Uri.parse(url));
      print("reponse ${response.body}");
      Map<String,dynamic> jsondata = jsonDecode(response.body);
      print("jsondata ${jsondata}");


      if(response.statusCode == 200){
        List data = jsondata['carts'];
        List data2 = data.first['products'];
        carts = data.map((e) => ProductModel.fromJson(e)).toList();
      }
      isLoading.value = false;
    }
    catch(e){
    }
  }

}
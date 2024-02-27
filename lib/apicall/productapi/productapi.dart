import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:task1/apicall/productapi/productmodel.dart';
import 'package:http/http.dart' as http  ;



class ProductApi extends StatefulWidget {
  const ProductApi({super.key});

  @override
  State<ProductApi> createState() => _ProductApiState();
}

class _ProductApiState extends State<ProductApi> {
  String url = "https://dummyjson.com/products";
  List<ProductModel> products = [];

  @override
  void initState() {
     cathdata();
    super.initState();
  }

  cathdata() async{
    try{
      http.Response response = await http.get(Uri.parse(url));
      print("response ${response.body}");
      Map<String,dynamic> jsondata = jsonDecode(response.body);
      print("jsondata ${jsondata}");
      if(response.statusCode == 200){
        List data = jsondata['products'];
        products = data.map((e) => ProductModel.fromJson(e)).toList();
        setState(() {
        });
      }
    }catch(e){
     }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product APi"),
      ),
      body: ListView.builder(
        itemCount: products.length,
          itemBuilder: (context, index) {
            return Container(
              child: ListTile(
                leading: Image.network("https://cdn.dummyjson.com/product-images/1/thumbnail.jpg"),
                title: Text(products[index].title.toString()),
                subtitle: Text(products[index].description.toString()),
              ),
            );
          },)
    );
  }
}

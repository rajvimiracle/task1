import 'dart:convert';

import 'package:get/get.dart';
import 'package:task1/api/commentsapi/CommentsModel.dart';
import 'package:http/http.dart'as http;

class CommentsController  extends GetxController{
  String url = "https://dummyjson.com/comments";
  List<CommentsModel>comments  = [];
  RxBool isLoading = true.obs;

  @override
  void onInit() {
    serachdata();
    super.onInit();
  }

  serachdata() async{
    try{
      http.Response response = await http.get(Uri.parse(url));
      print("response ${response.body}");
      Map<String,dynamic > jsondata = jsonDecode(response.body);
      print("jsondata ${jsondata}");

      if(response.statusCode ==200){
        List data =  jsondata['comments'];
        comments =data.map((e) => CommentsModel.fromJson(e)).toList();
      }
      isLoading.value = false;
    }
   catch(e){
   }
  }
}


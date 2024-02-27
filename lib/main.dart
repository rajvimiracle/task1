
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task1/FetchLocation.dart';
import 'package:task1/HomePage.dart';
import 'package:task1/OpenseaApi.dart';
import 'package:task1/SimpleMap.dart';
import 'package:task1/UrlLuncher.dart';
import 'package:task1/api/MapIntegration/Home_Screen.dart';
import 'package:task1/api/TodosApi.dart';
import 'package:task1/api/cartspi/CartsApi.dart';
import 'package:task1/api/commentsapi/CommentsApi.dart';
import 'package:task1/apicall/productapi/productapi.dart';
import 'package:task1/apicall/todosapi/apicall.dart';
import 'package:task1/conitaner/glassmorphismconitner.dart';


import 'route/route/routes.dart';
import 'route/route/screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Responsive Sizer Example',
          theme: ThemeData(

            primarySwatch: Colors.blue,
          ),
          home: GlassMorphism(),
          // initialRoute: Routes.loginPage,
          // getPages: Screens.routes,
        );
      }, // Optional
    );
  }
}
// var and dynamic
// void main(){
//   var section ;
//
//   section = 16;
//   section = "Rajvi";
//
//
//   var  rollno = 11;
//
//   rollno = 16;
// }
// }

//function
// var myC = myClass();
//myC.printName("Miracle"); // function calling
//myC.printName("Flutter");
//class myClass(){
//void printName(Sring ,name){  // declartion
//print(name); // defination
// }

//have function result show kaeva saki ke exit kaeavi saki
// int Add(){
// int a,b;
// a = 5;
//b = 10;
// int sum = a+b;
// resturn sum;
//}

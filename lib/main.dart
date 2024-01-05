import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Responsive Sizer Example',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Home(),
        );
      },
      maxTabletWidth: 900, // Optional
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
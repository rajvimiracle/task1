// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:task1/api/commentsapi/CommentsController.dart';
//
// class CommentsApi extends StatelessWidget {
//    CommentsApi({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Comments Api"),
//       ),
//       body: Obx(() {
//         return controller.isLoading.value == true ? Center(child: CircularProgressIndicator()) :
//         ListView.builder(
//           itemCount: controller.data.id,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 leading: CircleAvatar(
//                   child: Text("${controller.data.id.toString()}"),
//                 ),
//
//               );
//             },);
//       }),
//
//     );
//   }
// }

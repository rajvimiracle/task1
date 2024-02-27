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
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/api/commentsapi/CommentsController.dart';

class CommentsApi extends StatelessWidget {
 CommentsController commentsController = Get.put(CommentsController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comments Api"),
      ),
      body: Obx(() => commentsController.isLoading.value ? Center(
        child: CircularProgressIndicator()
      ):  ListView.builder(
        itemCount: commentsController.comments.length,
        itemBuilder: (context,  index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(commentsController.comments[index].id.toString()),
            ),
            title: Text(commentsController.comments[index].body.toString()),
            trailing: Text(commentsController.comments[index].postId.toString()),
            subtitle: Text(commentsController.comments[index].user.username),
          );
        },
      ),),
    );
  }
}

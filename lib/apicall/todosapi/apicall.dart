
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:task1/apicall/todosapi/model.dart';

class ApiCall extends StatefulWidget {
  const ApiCall({super.key});

  @override
  State<ApiCall> createState() => _ApiCallState();
}

class _ApiCallState extends State<ApiCall> {
  String url = "https://dummyjson.com/todos";
  List<TodoModel> todos = [];

  @override
  void initState() {
    finddata();
    super.initState();
  }

  finddata() async {
    try{
      http.Response response = await http.get(Uri.parse(url));
      print("respons ${response.body}");
      Map<String,dynamic> jsondata = jsonDecode(response.body);
      print("jsondata ${jsondata}");

      if(response.statusCode == 200){
        List data = jsondata['todos'];
        todos = data.map((e) => TodoModel.fromJson(e)).toList();
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
        title: Text("TodosApi"),
      ),
      body: ListView.builder(
        itemCount: todos.length,
          itemBuilder: (context, index){
            return  ListTile(
              leading: CircleAvatar(
                child: Center(
                  child: Text(todos[index].id.toString()),
                ),
              ),
              title: Text(todos[index].todo.toString(),),
              subtitle: Text(todos[index].userId.toString()),

            );
          }
      )
    );
  }
}




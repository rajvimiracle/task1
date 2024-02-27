class CommentsModel {
  int id;
  String body;
  int postId;
  User user;

  CommentsModel({
    required this.id,
    required this.body,
    required this.postId,
    required this.user,
  });

  factory CommentsModel.fromJson(Map<String, dynamic> json) => CommentsModel(
    id: json["id"] ?? 0,
    body: json["body"] ?? "",
    postId: json["postId"] ?? 0,
    user: User.fromJson(json["user"] ,
    ),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "body": body,
    "postId": postId,
    "user": user.toJson(),
  };
}

class User {
  int id;
  String username;

  User({
    required this.id,
    required this.username,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"] = 0 ,
    username: json["username"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
  };
}

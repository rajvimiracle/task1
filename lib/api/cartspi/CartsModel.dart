
class ProductModel {
  int id = 0;
  String title = "";
  int price = 0;
  int quantity =0;
  int total =0;
  double discountPercentage =0;
  int discountedPrice = 0;


  ProductModel();
  ProductModel.fromJson(Map<String,dynamic> json){
    id = json['id'];
    title = json['title'];
    price = json['price'];
    quantity = json['quantity'];
    total = json['total'];
    discountPercentage = json['discountPercentage'];
    discountedPrice = json['discountedPrice'];
  }

  Map<String,dynamic> toJson(){
    return{
      "id" : id,
      "title" : title,
      "price" : price,
      "quantity" : quantity,
      "total" : total,
      "discountPercentage" : discountPercentage,
      "discountedPrice" : discountedPrice,
    };
  }

}

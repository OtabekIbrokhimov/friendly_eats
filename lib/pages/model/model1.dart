import 'package:flutter/cupertino.dart';

class Product implements Comparable <Product>{
  String name;
  String type;
  String cost;
  String image;
  bool isLike;
  String category;
  Product({required this.name, required this.type, required this.cost, required this.image, required this.category,required this.isLike});
  @override
  @override
  String toString(){
    return "{$name $type $cost $image $category $isLike}";
  }
  int compareTo(Product other) {
    // TODO: implement compareTo
    return category.length.compareTo(other.category.length);
  }
}
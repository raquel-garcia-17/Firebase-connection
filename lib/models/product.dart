import 'dart:convert';

class Product {
    Product({
        required this.available,
        required this.name,
        this.pic
    });

    bool available;
    String name;
    String? pic;
    double price;
    String? id;
    String? description;

    factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Product.fromMap(Map<String, dynamic> json) => Product(
        available: json["available"],
        name: json["name"],
        pic: json["pic"]
    );

    Map<String, dynamic> toMap() => {
        "available": available,
        "name": name,
        "pic": pic
    };
}
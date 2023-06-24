// To parse this JSON data, do
//
//     final productsModel = productsModelFromJson(jsonString);

import 'dart:convert';

ProductsModel productsModelFromJson(String str) => ProductsModel.fromJson(json.decode(str));

String productsModelToJson(ProductsModel data) => json.encode(data.toJson());

class ProductsModel {
  int code;
  String msg;
  List<Datum> data;

  ProductsModel({
    required this.code,
    required this.msg,
    required this.data,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
        code: json["code"],
        msg: json["msg"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "msg": msg,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  String itemId;
  String merchantId;
  String itemName;
  String itemDescription;
  dynamic itemNameTrans;
  dynamic itemDescriptionTrans;
  String status;
  String price;
  String photo;
  int discount;
  dynamic dish;
  String size;
  String qtyForPrice;
  dynamic promotionStartDate;
  dynamic promotionEndDate;
  String category;
  String categoryName;
  bool multiplePrice;
  List<String> prices2;
  bool addedAsFavorite;
  String prices;
  List<String> prices1;
  String catId;
  String dishImage;
  String? qty;

  Datum({
    required this.itemId,
    required this.merchantId,
    required this.itemName,
    required this.itemDescription,
    this.itemNameTrans,
    this.itemDescriptionTrans,
    required this.status,
    required this.price,
    required this.photo,
    required this.discount,
    this.dish,
    required this.size,
    required this.qtyForPrice,
    this.promotionStartDate,
    this.promotionEndDate,
    required this.category,
    required this.categoryName,
    required this.multiplePrice,
    required this.prices2,
    required this.addedAsFavorite,
    required this.prices,
    required this.prices1,
    required this.catId,
    required this.dishImage,
    this.qty,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        itemId: json["item_id"],
        merchantId: json["merchant_id"],
        itemName: json["item_name"],
        itemDescription: json["item_description"],
        itemNameTrans: json["item_name_trans"],
        itemDescriptionTrans: json["item_description_trans"],
        status: json["status"],
        price: json["price"],
        photo: json["photo"],
        discount: json["discount"],
        dish: json["dish"],
        size: json["size"],
        qtyForPrice: json["qty_for_price"],
        promotionStartDate: json["promotion_start_date"],
        promotionEndDate: json["promotion_end_date"],
        category: json["category"],
        categoryName: json["categoryName"],
        multiplePrice: json["multiple_price"],
        prices2: List<String>.from(json["prices2"].map((x) => x)),
        addedAsFavorite: json["added_as_favorite"],
        prices: json["prices"],
        prices1: List<String>.from(json["prices1"].map((x) => x)),
        catId: json["cat_id"],
        dishImage: json["dish_image"],
        qty: json["qty"],
      );

  Map<String, dynamic> toJson() => {
        "item_id": itemId,
        "merchant_id": merchantId,
        "item_name": itemName,
        "item_description": itemDescription,
        "item_name_trans": itemNameTrans,
        "item_description_trans": itemDescriptionTrans,
        "status": status,
        "price": price,
        "photo": photo,
        "discount": discount,
        "dish": dish,
        "size": size,
        "qty_for_price": qtyForPrice,
        "promotion_start_date": promotionStartDate,
        "promotion_end_date": promotionEndDate,
        "category": category,
        "categoryName": categoryName,
        "multiple_price": multiplePrice,
        "prices2": List<dynamic>.from(prices2.map((x) => x)),
        "added_as_favorite": addedAsFavorite,
        "prices": prices,
        "prices1": List<dynamic>.from(prices1.map((x) => x)),
        "cat_id": catId,
        "dish_image": dishImage,
        "qty": qty,
      };
}

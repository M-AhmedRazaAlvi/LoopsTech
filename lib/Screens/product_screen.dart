import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:loopstech_task/models/products_models.dart';
import 'package:loopstech_task/utils/custom_text.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            var products = snapshot.data!.data;
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      ListTile(
                        leading: SizedBox(
                          width: 50,
                          child: Image.network(products[index].photo),
                        ),
                        title: CustomText(text: products.first.itemName),
                        subtitle: CustomText(text: products.first.itemDescription),
                        trailing: CustomText(text: products.first.itemId),
                        tileColor: Colors.blue,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  Future<ProductsModel> getData() async {
    var url = 'https://loopstech.com/rest/v1/products.php?cat_id=56';
    var uri = Uri.parse(url);
    var response = await http.get(uri);
    print("file url is $url");
    print("file response is ${response.body}");
    if (response.statusCode == 200) {
      ProductsModel model = ProductsModel.fromJson(jsonDecode(response.body));
      print("file model is ${model}");

      return model;
    } else {
      ProductsModel model = ProductsModel.fromJson(jsonDecode(response.body));
      print("file model else is ${model}");

      return model;
    }
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:loopstech_task/models/categories_model.dart';

import '../utils/custom_text.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
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
            var categories = snapshot.data!.data;
            return ListView.builder(
              itemCount: categories!.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image.network('${categories[index].categoryPic}'),
                        title: CustomText(text: "${categories[index].categoryName}"),
                        subtitle: CustomText(text: "${categories[index].categoryDescription}"),
                        trailing: CustomText(text: "${categories[index].catId}"),
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

  Future<CategoriesModel> getData() async {
    var url = 'https://loopstech.com/rest/v1/categories.php';
    var uri = Uri.parse(url);
    var response = await http.get(uri);
    print("file url is $url");
    print("file response is ${response.body}");
    if (response.statusCode == 200) {
      CategoriesModel model = CategoriesModel.fromJson(jsonDecode(response.body));
      print("file model is ${model}");

      return model;
    } else {
      CategoriesModel model = CategoriesModel.fromJson(jsonDecode(response.body));
      print("file model else is ${model}");

      return model;
    }
  }
}

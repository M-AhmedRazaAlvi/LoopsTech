import 'package:flutter/material.dart';
import 'package:loopstech_task/Screens/categories_screen.dart';
import 'package:loopstech_task/Screens/product_screen.dart';
import 'package:loopstech_task/utils/custom_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const CustomText(
            text: 'LoopsTech',
            color: Colors.white,
            size: 20,
            weight: FontWeight.bold,
          ),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [Tab(text: 'Products'), Tab(text: 'Categories')],
          ),
        ),
        body: const TabBarView(
          children: [
            ProductScreen(),
            CategoriesScreen(),
          ],
        ),
      ),
    );
  }
}

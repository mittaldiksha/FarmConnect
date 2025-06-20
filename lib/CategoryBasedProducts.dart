import 'package:flutter/material.dart';

class CategoryBasedProducts extends StatelessWidget {
   CategoryBasedProducts({super.key, required this.Category});

  String Category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Text(Category),
          ),
        ],
      ),
    );
  }
}

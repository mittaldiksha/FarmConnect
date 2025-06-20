import 'package:farm_connect/CategoryBasedProducts.dart';
import 'package:farm_connect/Widgets/category.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({super.key, required this.CategoriesList});

  List  CategoriesList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Categories", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.green),),),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemCount: 5,
          itemBuilder: (context, index){
              return GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CategoryBasedProducts(
                              Category: CategoriesList[index][0])));

                },
                  child: category(
                      categoryName: CategoriesList[index][0],
                      imagePath: CategoriesList[index][1]));
            },),
      )
    );
  }
}

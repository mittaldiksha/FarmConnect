import 'package:farm_connect/Models/Product.dart';
import 'package:farm_connect/Pages/DetailViewPage.dart';
import 'package:farm_connect/Widgets/ProductTile.dart';
import 'package:flutter/material.dart';
import 'package:farm_connect/Categories.dart';

class Explore extends StatelessWidget {
   Explore({super.key});

  List categoriesList=[
    ["Fruits", "fruits.png"],
    ["Grains", "grains.png"],
    ["Herbs", "herb.png"],
    ["Vegetable", "vegies.png"],
    ["Dairy Products", "dairyprdts.png"]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Explore", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),),),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: double.maxFinite,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 40,
                      width: 270,
                      color: Colors.green.shade50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 8),
                        child: Row(
                          children: [
                            //   search icon
                            Icon(Icons.search_outlined,color: Colors.grey.shade500,),
                            SizedBox(width: 10,),
                            //   textform field
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  label:Text("Search here", style: TextStyle(fontStyle:FontStyle.italic,fontSize: 23, fontWeight: FontWeight.w300),),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                        height: 40,
                        width: 40,
                        color: Colors.green.shade50,
                        child: Icon(Icons.favorite_border_outlined,color: Colors.green,size: 30,)),
                  ),
                  SizedBox(width: 7,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                        height: 40,
                        width: 40,
                        color: Colors.green.shade50,
                        child: Icon(Icons.filter_alt_outlined,color: Colors.green,size: 30,)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 30,
                child: Row(
                  children: [

                    Text("Categories",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,fontStyle: FontStyle.italic),),
                    Spacer(),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Categories(CategoriesList:categoriesList)
                              ));
                        },
                        child: Text("View All",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.green),)),
                  ],
                )
            ),
            Container(
              height: 60,
              width: double.maxFinite,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // first category
                  Container(
                    height:70,
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 70,
                            child: Image.asset("assets/images/fruits.png"),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text("Fruits",style: TextStyle(fontSize:20, fontWeight: FontWeight.w500,),)
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      // border: Border.all(width: 1),
                      color: Colors.green.shade100,
                      borderRadius:BorderRadius.circular(40),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  //   second category
                  Container(
                    height:70,
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 70,
                            child: Image.asset("assets/images/grains.png"),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text("Grains",style: TextStyle(fontSize:20, fontWeight: FontWeight.w500,),)
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      // border: Border.all(width: 1),
                      color: Colors.green.shade100,
                      borderRadius:BorderRadius.circular(40),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  //   second category
                  Container(
                    height:70,
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 70,
                            child: Image.asset("assets/images/herb.png"),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text("Herbs",style: TextStyle(fontSize:20, fontWeight: FontWeight.w500,),)
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      // border: Border.all(width: 1),
                      color: Colors.green.shade100,
                      borderRadius:BorderRadius.circular(40),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  //   second category
                  Container(
                    height:70,
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 70,
                            child: Image.asset("assets/images/vegies.png"),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text("Vegetables",style: TextStyle(fontSize:20, fontWeight: FontWeight.w500,),)
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      // border: Border.all(width: 1),
                      color: Colors.green.shade100,
                      borderRadius:BorderRadius.circular(40),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  //   second category
                  Container(
                    height:70,
                    width: 230,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 70,
                            child: Image.asset("assets/images/dairyprdts.png"),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text("Dairy Products",style: TextStyle(fontSize:20, fontWeight: FontWeight.w500,),)
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      // border: Border.all(width: 1),
                      color: Colors.green.shade100,
                      borderRadius:BorderRadius.circular(40),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: GridView.builder(
                  gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 20,

                    ),
                    itemCount: Products.length,

                  itemBuilder: (context, index){

                    Product p = Products[index];

                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> DetailViewPage(
                                ImagePath:Products[index].ImagePath,
                                Title: Products[index].Title,
                                Rating: Products[index].Rating,
                                actualPrice: Products[index].actualPrice,
                                discountedPrice: Products[index].discountedPrice,
                                offPercntg: Products[index].offPercntg
                            ))
                        );
                      },
                      child: ProductTile(
                        height: 300,
                          clr: Colors.yellow.shade50,
                          ImagePath: p.ImagePath,
                          Title: p.Title,
                          Rating: p.Rating,
                          actualPrice: p.actualPrice,
                          discountedPrice: p.discountedPrice,
                          offPercntg: p.offPercntg,
                      ),
                    );
                  },),
              ),
            )

          ],
        ),
      ),
    );
  }
}

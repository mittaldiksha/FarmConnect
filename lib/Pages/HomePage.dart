
import 'package:farm_connect/Categories.dart';
import 'package:farm_connect/Models/Product.dart';
import 'package:farm_connect/Pages/DetailViewPage.dart';
import 'package:farm_connect/Pages/Explore.dart';
import 'package:farm_connect/Widgets/ProductTile.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
   Homepage({super.key});


  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  List categoriesList=[
    ["Fruits", "fruits.png"],
    ["Grains", "grains.png"],
    ["Herbs", "herb.png"],
    ["Vegetable", "vegies.png"],
    ["Dairy Products", "dairyprdts.png"]
  ];



  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // SizedBox(
                  //   height: 30,
                  // ),
                  Container(
                    height: 50,
                    child:Row(
                        children: [
                          Text("Farm Connect", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.green),),
                          Spacer(),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                                height: 40,
                                width: 40,
                                color: Colors.green.shade50,
                                child: Icon(Icons.favorite_border_outlined,color: Colors.green,size: 30,)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                                height: 40,
                                width: 40,
                                color: Colors.green.shade50,
                                child: Icon(Icons.notifications_none_rounded,color: Colors.green,size: 30,)),
                          ),
                        ],
                      ),
                    ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      //   first container
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 50,
                          width: 50,
                          color: Colors.green.shade50,
                          child:Icon(Icons.menu_rounded,size: 30,)),
                        ),
                      //   spacer
                      Spacer(),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 40,
                          width: 230,
                          color: Colors.green.shade50,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8),
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
                      //   second container
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          height: 50,
                          width: 50,
                          color: Colors.green.shade50,
                          child: Icon(Icons.supervised_user_circle,size: 40,)),
                        ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 140,
                      width: double.maxFinite,
                    child: ListView(
                       scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height:150,
                          width: 280,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              //    have to  change the images
                              "assets/images/Organic_farming.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height:150,
                          width: 280,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              //    have to  change the images
                              "assets/images/fruitsandfveg.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height:180,
                          width: 280,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              //    have to  change the images
                              "assets/images/farmer family.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height:120,
                          width: 280,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              //    have to  change the images
                              "assets/images/farm_logos.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 130),
                    height: 10,
                    width: double.maxFinite,
                    child: ListView.builder(
                      itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 10,
                                width: 10,
                                color: Colors.green,
                              ),
                            ),
                          );
                        },
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
                      )),
                  SizedBox(
                    height: 20,
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 30,
                      child: Row(
                        children: [
      
                          Text("Browse Products",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,fontStyle: FontStyle.italic),),
                          Spacer(),
                          GestureDetector(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Explore(),
                                    ));
                              },
                              child: Text("View All",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.green),)),
                        ],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 300,
                    width: double.maxFinite,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: Products.length,
                        itemBuilder: (context, index){
                        Product p=  Products[index];
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
                            ImagePath: p.ImagePath,
                            Title: p.Title,
                            Rating: p.Rating,
                            actualPrice: p.actualPrice,
                            discountedPrice: p.discountedPrice,
                            offPercntg: p.offPercntg
                        ),
                      );
                    },
                    ),
                  ),
              
                ],
              ),
            ),
          ),
      
        ),
    );
  }
}

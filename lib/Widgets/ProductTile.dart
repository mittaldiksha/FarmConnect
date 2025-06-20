import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  ProductTile({
    super.key,
    required this.ImagePath,
    required this.Title,
    required this.Rating,
    required this.actualPrice,
    required this.discountedPrice,
    required this.offPercntg,
    this.height,
    this.width,
    this.clr,
  });

  String ImagePath;
  String Title;
  String Rating;
  double discountedPrice;
  double actualPrice;
  String offPercntg;
  double? height;
  double? width;
  Color? clr;

  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.only(left: 10, right: 10),
          height: height?? 400,
          width: width?? 200,
          child:ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 180,
                  width: double.maxFinite,
                  child: Image.asset(
                        ImagePath,
                      fit: BoxFit.cover,
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8,top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(Title, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(5, (index){
                          return Icon(
                            Icons.star,
                            color: Colors.yellow,
                          );
                        }),
                      ),
                      Text("Rs. "+discountedPrice.toString(), style: TextStyle(fontSize: 16),),
                      Row(
                        children: [
                          Text(offPercntg, style: TextStyle(fontSize: 13,color: Colors.green,fontStyle: FontStyle.italic),),
                          Text(" Rs. "+actualPrice.toString(),  style: TextStyle(fontSize: 15,color: Colors.green,),),
                          Spacer(),
                          Container(
                            height: 30,
                            width: 30,

                            child: Icon(Icons.favorite_border_outlined, color: Colors.green,),
                            decoration: BoxDecoration(
                              color: Colors.green.shade50,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Container(
                            height: 30,
                            width: 30,

                            child: Icon(Icons.shopping_cart_outlined, color: Colors.green,),
                            decoration: BoxDecoration(
                              color: Colors.green.shade50,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
          decoration: BoxDecoration(
              color: clr?? Colors.transparent,
            borderRadius: BorderRadius.circular(20)
          ),
        );
  }
}

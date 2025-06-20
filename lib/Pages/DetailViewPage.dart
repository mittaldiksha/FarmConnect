import 'package:farm_connect/Models/Product.dart';
import 'package:flutter/material.dart';

class DetailViewPage extends StatelessWidget {
   DetailViewPage({
     super.key,
     required this.ImagePath,
     required this.Title,
     required this.Rating,
     required this.actualPrice,
     required this.discountedPrice,
     required this.offPercntg,
   });

  String ImagePath;
  String Title;
  String Rating;
  double discountedPrice;
  double actualPrice;
  String offPercntg;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                      height: 40,
                      width: 40,
                    child: Icon(Icons.arrow_back_rounded),
                    decoration: BoxDecoration(
                       color: Colors.green.shade50,
                        borderRadius: BorderRadius.circular(14),
                       border: Border.all(width: 2, color: Colors.green.shade200),
                      ),
                  ),
                ),
                Spacer(),
                Text("Product Details",style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500, fontSize: 22),),
                Spacer(),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: 40,
                    width: 40,
                    child: Icon(Icons.shopping_cart_outlined,),
                    decoration: BoxDecoration(
                      color: Colors.green.shade50,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(width: 2, color: Colors.green.shade200),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: double.maxFinite,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  ImagePath,
                fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(Title, style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                      Spacer(),
                      Container(
                        height: 40,
                        width: 40,
                        child: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.red,
                        ),
                        decoration:BoxDecoration(
                          color: Colors.green.shade50,
                          border: Border.all(color: Colors.green, width: 1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(5, (index){
                      return Icon(
                        Icons.star,
                        color: Colors.yellow,
                      );
                    }),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("Rs. "+discountedPrice.toString(), style: TextStyle(fontSize: 18),),
                      SizedBox(width: 5,),
                      Text(offPercntg, style: TextStyle(fontSize: 13,color: Colors.green,fontStyle: FontStyle.italic),),
                      Text(" Rs. "+actualPrice.toString(),  style: TextStyle(fontSize: 15,color: Colors.green,),),

                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: (){},
              child: Container(
                height: 70,
                width: double.maxFinite,
                child: Center(child: Text("Add to Cart", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26),)),
                decoration:BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.green, width: 1),
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}

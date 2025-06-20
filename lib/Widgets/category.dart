import 'package:flutter/material.dart';

class category extends StatelessWidget {
  String categoryName;
  String imagePath;
  category({super.key, required this.categoryName, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // icon
              ClipOval(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green.shade100,
                  child: Center(
                      child: Container(
                        height: 400,
                          width: 400,
                          child: Image.asset("assets/images/"+ imagePath,)
                      ),
                  )),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Text(categoryName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),)
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.green.shade100,

        ),
    );
  }
}

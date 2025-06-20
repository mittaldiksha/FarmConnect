import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
   MyContainer({
     super.key,
     required this.height,
     required this.width,
     required this.clr,
     required this.rds,
     this.child,
   });

  double height;
  double width;
  double rds;
  Color clr;
  Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: child),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: clr,
        borderRadius: BorderRadius.circular(rds),
      ),
    );
  }
}


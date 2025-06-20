import 'package:farm_connect/Pages/Farmer_dashboard.dart';
import 'package:farm_connect/Pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:farm_connect/Pages/Cart.dart';
import 'package:farm_connect/Pages/Explore.dart';
import 'package:farm_connect/Pages/Profile.dart';
import 'package:farm_connect/Pages/Settings.dart';
class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int SelectedIndex = 0;

  List Pages = [
    Homepage(),
    // FarmerDashboard(),
    Explore(),
    CartPage(),
    // Settings(),
    Profile(name: "Diksha", role: "Customer", email: "diksha@gmail.com", phone: "8708523698", location: "Yamuna Nagar, Haryana"),
  ];

  void Function(int)? onTap(int index){

    setState(() {
      SelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[SelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
       unselectedItemColor: Colors.green.shade50,
       onTap: onTap,
          backgroundColor: Colors.green.shade50,
          currentIndex: SelectedIndex,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.green,size: 30,),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.explore_outlined,color: Colors.green,size: 30,),label: "Explore"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,color: Colors.green,size: 30,),label: "Cart"),
        // BottomNavigationBarItem(icon: Icon(Icons.settings_outlined,color: Colors.green,size: 30,),label: "Setting"),
        BottomNavigationBarItem(icon: Icon(Icons.person_pin,color: Colors.green,size: 30,),label: "Profile"),
      ]),
    );
  }
}

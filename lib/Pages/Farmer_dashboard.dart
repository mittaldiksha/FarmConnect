import 'package:flutter/material.dart';

class FarmerDashboard extends StatelessWidget {
  const FarmerDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String farmerName = "Ravi Kumar"; // You can fetch this dynamically

    return Scaffold(
      appBar: AppBar(
        title: Text("Farmer Dashboard", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),),
        actions: [
          IconButton(onPressed: () {},
              icon: const Icon(Icons.notifications),
              color: Colors.green,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome back, $farmerName 👨‍🌾",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),

            // Quick Summary Cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _dashboardCard(Icons.shopping_cart, "Orders", "12"),
                _dashboardCard(Icons.inventory, "Products", "2"),
                _dashboardCard(Icons.currency_rupee_outlined, "Earnings", "₹2,250"),
              ],
            ),
            SizedBox(height: 20),

            // Section: My Products
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("My Products",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                TextButton(
                  onPressed: () {
                    // Navigate to product list
                  },
                  child: const Text("View All"),
                )
              ],
            ),

            _productTile("Capcicum", "₹25/kg", "assets/images/capcicum.jpg"),
            _productTile("Onion", "₹24/kg", "assets/images/onions2.jpg"),
            SizedBox(height: 20),

            // Add New Product Button
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Navigate to add product
                },
                icon: const Icon(Icons.add),
                label: const Text("Add New Product"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _dashboardCard(IconData icon, String title, String value) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: Container(
        width: 100,
        height: 150,
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.green.shade700, size: 28),
            SizedBox(height: 8),
            Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
            Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget _productTile(String name, String price, String assetImage) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Image.asset(assetImage, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(name),
        subtitle: Text(price),
        trailing: IconButton(
          icon: Icon(Icons.edit, color: Colors.green),
          onPressed: () {
            // Navigate to edit product
          },
        ),
      ),
    );
  }
}

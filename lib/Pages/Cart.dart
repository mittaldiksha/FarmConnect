// import 'package:flutter/material.dart';
//
// class Cart extends StatelessWidget {
//   const Cart({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: Text("Cart"),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class CartItem {
  final String name;
  final int quantity;
  final double price;

  CartItem({required this.name, required this.quantity, required this.price});
}

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<CartItem> cartItems = [
    CartItem(name: 'Tomatoes', quantity: 2, price: 30.0),
    CartItem(name: 'Onions', quantity: 1, price: 20.0),
    CartItem(name: 'Wheat (10kg)', quantity: 1, price: 250.0),
  ];

  double getTotalPrice() {
    return cartItems.fold(0, (sum, item) => sum + item.quantity * item.price);
  }

  void increaseQuantity(int index) {
    setState(() {
      cartItems[index] = CartItem(
        name: cartItems[index].name,
        quantity: cartItems[index].quantity + 1,
        price: cartItems[index].price,
      );
    });
  }

  void decreaseQuantity(int index) {
    if (cartItems[index].quantity > 1) {
      setState(() {
        cartItems[index] = CartItem(
          name: cartItems[index].name,
          quantity: cartItems[index].quantity - 1,
          price: cartItems[index].price,
        );
      });
    }
  }

  void removeItem(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('My Cart'),
      //   centerTitle: true,
      //   backgroundColor: Colors.green.shade700,
      // ),
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(title: Text("My Profile", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),),),

      body: cartItems.isEmpty
          ? const Center(child: Text('Your cart is empty.'))
          : Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: ListTile(
                    title: Text(item.name),
                    subtitle: Text("₹${item.price.toStringAsFixed(2)} x ${item.quantity}"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () => decreaseQuantity(index),
                        ),
                        Text('${item.quantity}'),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () => increaseQuantity(index),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => removeItem(index),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'SubTotal: ₹${getTotalPrice().toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle checkout
                  },
                  child: const Text('Checkout'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
//
// class CartItem {
//   final String name;
//   final String imageAsset;
//   final int quantity;
//   final double price;
//
//   CartItem({
//     required this.name,
//     required this.imageAsset,
//     required this.quantity,
//     required this.price,
//   });
// }
//
// class CartPage extends StatefulWidget {
//   const CartPage({Key? key}) : super(key: key);
//
//   @override
//   State<CartPage> createState() => _CartPageState();
// }
//
// class _CartPageState extends State<CartPage> {
//   List<CartItem> cartItems = [
//     // CartItem(name: 'Fresh Capcicum', imageUrl: "assets/images/capcicum.jpg", quantity: 2, price: 25.0),
//     // CartItem(name: 'Organic Onions', imageUrl: "assets/images/onions2.jpg", quantity: 1, price: 20.0),
//     // // CartItem(name: 'Strawberries', imageUrl: "assets/images/Strawberries.webp", quantity: 1, price: 240.0),
//     // CartItem(name: 'Fresh Tomatoes', imageUrl: 'https://via.placeholder.com/80', quantity: 2, price: 25.0),
//     // CartItem(name: 'Organic Onions', imageUrl: 'https://via.placeholder.com/80', quantity: 1, price: 20.0),
//     // CartItem(name: 'Wheat (10kg)', imageUrl: 'https://via.placeholder.com/80', quantity: 1, price: 240.0),
//       CartItem(name: 'Fresh Capcicum', imageAsset: "assets/images/capcicum.jpg", quantity: 2, price: 25.0),
//       CartItem(name: 'Organic Onions', imageAsset: "assets/images/onions2.jpg", quantity: 1, price: 20.0),
//       CartItem(name: 'Strawberries', imageAsset: "assets/images/Strawberries.webp", quantity: 1, price: 240.0),
//
//   ];
//
//   double getTotal() {
//     return cartItems.fold(0, (sum, item) => sum + item.quantity * item.price);
//   }
//
//   void increaseQuantity(int index) {
//     setState(() {
//       cartItems[index] = CartItem(
//         name: cartItems[index].name,
//         imageAsset: cartItems[index].imageAsset,
//         quantity: cartItems[index].quantity + 1,
//         price: cartItems[index].price,
//       );
//     });
//   }
//
//   void decreaseQuantity(int index) {
//     if (cartItems[index].quantity > 1) {
//       setState(() {
//         cartItems[index] = CartItem(
//           name: cartItems[index].name,
//           imageAsset: cartItems[index].imageAsset,
//           quantity: cartItems[index].quantity - 1,
//           price: cartItems[index].price,
//         );
//       });
//     }
//   }
//
//   void removeItem(int index) {
//     setState(() {
//       cartItems.removeAt(index);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("My Cart"),
//         centerTitle: true,
//         backgroundColor: Colors.green.shade700,
//       ),
//       body: cartItems.isEmpty
//           ? const Center(child: Text("Your cart is empty."))
//           : Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: cartItems.length,
//               itemBuilder: (context, index) {
//                 final item = cartItems[index];
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//                   child: Card(
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                     elevation: 3,
//                     child: Row(
//                       children: [
//                         ClipRRect(
//                           borderRadius: const BorderRadius.only(
//                             topLeft: Radius.circular(12),
//                             bottomLeft: Radius.circular(12),
//                           ),
//                           child: Image.network(
//                             item.imageAsset,
//                             width: 80,
//                             height: 80,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         Expanded(
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(item.name,
//                                     style: const TextStyle(
//                                         fontWeight: FontWeight.bold, fontSize: 16)),
//                                 const SizedBox(height: 6),
//                                 Text("₹${item.price.toStringAsFixed(2)}"),
//                                 const SizedBox(height: 8),
//                                 Row(
//                                   children: [
//                                     IconButton(
//                                       icon: const Icon(Icons.remove),
//                                       onPressed: () => decreaseQuantity(index),
//                                     ),
//                                     Text(item.quantity.toString(),
//                                         style: const TextStyle(fontSize: 16)),
//                                     IconButton(
//                                       icon: const Icon(Icons.add),
//                                       onPressed: () => increaseQuantity(index),
//                                     ),
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         IconButton(
//                           icon: const Icon(Icons.delete, color: Colors.red),
//                           onPressed: () => removeItem(index),
//                         )
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.all(20),
//             decoration: BoxDecoration(
//               color: Colors.grey.shade100,
//               borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
//               boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text("Subtotal:", style: TextStyle(fontSize: 18)),
//                     Text("₹${getTotal().toStringAsFixed(2)}",
//                         style: const TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 18)),
//                   ],
//                 ),
//                 const SizedBox(height: 16),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Navigate to checkout
//                   },
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(vertical: 14),
//                     backgroundColor: Colors.lightGreen,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                   child: const Text("Proceed to Checkout", style: TextStyle(fontSize: 16)),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

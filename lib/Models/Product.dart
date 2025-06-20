class Product {
  String ImagePath;
  String Title;
  String Rating;
  double discountedPrice;
  double actualPrice;
  String offPercntg;

  Product({
    required this.ImagePath,
    required this.Title,
    required this.Rating,
    required this.actualPrice,
    required this.discountedPrice,
    required this.offPercntg,
  });

}

List Products = [
  Product(
      ImagePath: "assets/images/Strawberries.webp",
      Title: "Strawberry",
      Rating: "5",
      actualPrice: 100,
      discountedPrice: 80,
      offPercntg:"20% off"),
  Product(
      ImagePath: "assets/images/orange.jpg",
      Title: "Orange",
      Rating: "5",
      actualPrice: 100,
      discountedPrice: 80,
      offPercntg:"20% off"),
  Product(
      ImagePath: "assets/images/capcicum.jpg",
      Title: "Capcicum",
      Rating: "5",
      actualPrice: 100,
      discountedPrice: 80,
      offPercntg:"20% off"),
  Product(
      ImagePath: "assets/images/onions2.jpg",
      Title: "Onion",
      Rating: "5",
      actualPrice: 100,
      discountedPrice: 80,
      offPercntg:"20% off")
];
class ProductModel {
  final String image;
  final String name;
  final int price;
  final String description;

  ProductModel({
    required this.image,
    required this.name,
    required this.price,
    required this.description,
  });

  static List<ProductModel> products = [
    ProductModel(
      image: "assets/product/product6.jpg",
      name: "Iced coffee",
      price: 110,
      description: "reversible angora cardigan",
    ),
    ProductModel(
      image: "assets/product/product1.jpg",
      name: "capuccino",
      price: 100,
      description: "reversible angora cardigan",
    ),
    ProductModel(
      image: "assets/product/product3.jpg",
      name: "latte",
      price: 40,
      description: "reversible angora cardigan",
    ),
    ProductModel(
      image: "assets/product/product4.jpg",
      name: "cookies",
      price: 120,
      description: "reversible angora cardigan",
    ),
    ProductModel(
      image: "assets/product/product2.jpg",
      name: "espresso",
      price: 200,
      description: "reversible angora cardigan",
    ),
    ProductModel(
      image: "assets/product/product5.jpg",
      name: "October",
      price: 140,
      description: "reversible angora cardigan",
    ),
  ];
}

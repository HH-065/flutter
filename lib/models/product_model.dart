class Product {
  final String id;
  final String name;
  final String category;
  final String image;
  final String description;
  final double price;
  final int stock;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.image,
    required this.description,
    required this.price,
    required this.stock,
  });

  factory Product.fromFirestore(
      String id, Map<String, dynamic> data) {
    return Product(
      id: id,
      name: data['name'] ?? '',
      category: data['category'] ?? '',
      image: data['image'] ?? '',
      description: data['description'] ?? '',
      price: (data['price'] as num).toDouble(),
      stock: data['stock'] ?? 0,
    );
  }
}
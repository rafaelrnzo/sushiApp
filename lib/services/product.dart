class Product {
  final int id;
  final String name;
  final int price;
  final int stock;
  final String photo;
  final String description;
  final int categoryId;
  final String stand;
  final DateTime createdAt;
  final DateTime updatedAt;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.stock,
    required this.photo,
    required this.description,
    required this.categoryId,
    required this.stand,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      name: json['name'] as String,
      price: json['price'] as int,
      stock: json['stock'] as int,
      photo: json['photo'] as String,
      description: json['description'] as String,
      categoryId: json['category_id'] as int, // Fix the key here
      stand: json['stand'] as String,
      createdAt: DateTime.parse(json["created_at"]),
      updatedAt: DateTime.parse(json["updated_at"]),
    );
  }
}
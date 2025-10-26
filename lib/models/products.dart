class Product {
  final String id;
  final String name;
  final double price;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    final variant = (json['product_variants'] != null && json['product_variants'].isNotEmpty)
        ? json['product_variants'][0]
        : {};
    return Product(
      id: json['id']?.toString() ?? '',
      name: json['name'] ?? 'Unnamed',
      price: (variant['saleprice'] ?? 0).toDouble(),
      imageUrl: variant['image_url'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'image_url': imageUrl,
    };
  }
}

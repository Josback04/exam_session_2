class Product {
  final int productId;
  final String productName;
  final String productShortName;
  final double productPrice;
  final String productDescription;
  final String createdDate;
  final String deliveryTimeSpan;
  final String productImageUrl;
  final int categoryId;
  final String categoryName;

  Product({
    required this.productId,
    required this.productName,
    required this.productShortName,
    required this.productPrice,
    required this.productDescription,
    required this.createdDate,
    required this.deliveryTimeSpan,
    required this.productImageUrl,
    required this.categoryId,
    required this.categoryName,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      productId: json['productId'],
      productName: json['productName'],
      productShortName: json['productShortName'],
      productPrice: json['productPrice'].toDouble(),
      productDescription: json['productDescription'],
      createdDate: json['createdDate'],
      deliveryTimeSpan: json['deliveryTimeSpan'],
      productImageUrl: json['productImageUrl'],
      categoryId: json['categoryId'],
      categoryName: json['categoryName'],
    );
  }
}

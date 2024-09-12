import 'package:flutter/material.dart';
import '../models/produits.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.productName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(product.productImageUrl),
            SizedBox(height: 16),
            Text(
              product.productName,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Prix: \$${product.productPrice.toStringAsFixed(2)}'),
            SizedBox(height: 8),
            Text('Description: ${product.productDescription}'),
            SizedBox(height: 8),
            Text('Catégorie: ${product.categoryName}'),
            SizedBox(height: 8),
            Text('Créé le: ${product.createdDate}'),
            SizedBox(height: 8),
            Text('Délai de livraison: ${product.deliveryTimeSpan}'),
          ],
        ),
      ),
    );
  }
}

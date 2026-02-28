import 'package:catalog/features/cart/domain/entities/product.dart';
import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  static final List<Product> _products = [
    Product(id: '1', name: 'Siomay', price: '5000'),
    Product(id: '2', name: 'Americano', price: '15000'),
    Product(id: '3', name: 'Katsu', price: '10000'),
  ];

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
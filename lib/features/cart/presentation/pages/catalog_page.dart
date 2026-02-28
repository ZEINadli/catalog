import 'package:catalog/core/routes/app_router.dart';
import 'package:catalog/features/cart/domain/entities/product.dart';
import 'package:catalog/features/cart/presentation/widgets/add_button_widget.dart';
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
  return Scaffold(
    appBar: AppBar(
      title: const Text("Menu"),
      actions: [
        IconButton(
          onPressed: () =>
              Navigator.pushNamed(context, AppRouter.cart),
          icon: const Icon(Icons.shopping_cart, color: Colors.yellow,),
        )
      ],
    ),
    body: ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: _products.length,
      separatorBuilder: (_, __) => const Divider(height: 24),
      itemBuilder: (context, index) {
        final product = _products[index];

        return Row(
          children: [
            const Icon(Icons.food_bank, size: 28, color: Colors.yellow,),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Rp ${product.price}",
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            AddButtonWidget(product: product),
          ],
        );
      },
    ),
  );
}
}
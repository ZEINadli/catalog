import 'package:catalog/features/cart/domain/entities/product.dart';
import 'package:catalog/features/cart/presentation/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddButtonWidget extends StatelessWidget {
  final Product product;
  const AddButtonWidget({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    final isItemInCart = context.select<CartProvider, bool>(
      (provider) => provider.isItemInCart(product.id),
    );

    return TextButton(
      onPressed: isItemInCart ? null : () => context.read<CartProvider>().addItem(product),
      child: isItemInCart ? Icon(Icons.check_circle, color: Colors.green) : Text('TAMBAH'),
    );
  }
}
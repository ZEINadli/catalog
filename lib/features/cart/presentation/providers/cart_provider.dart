import 'package:catalog/features/cart/domain/entities/product.dart';
import 'package:catalog/features/cart/domain/repositories/cart_repository.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  final CartRepository _repository;

  CartProvider({required CartRepository repository}) : _repository = repository;

  List<Product> get items => _repository.getCartItems();

}
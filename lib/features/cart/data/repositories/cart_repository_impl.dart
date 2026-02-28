import 'package:catalog/features/cart/domain/entities/product.dart';
import 'package:catalog/features/cart/domain/repositories/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  final List<Product> _items = [];

  @override
  List<Product> getCartItems() => List.unmodifiable(_items);

  @override
  void addItems(Product product) => _items.add(product);

  @override
  void removeAllItems() => _items.clear();


  @override
}
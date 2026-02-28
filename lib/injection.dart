import 'package:catalog/features/cart/data/repositories/cart_repository_impl.dart';
import 'package:catalog/features/cart/presentation/providers/cart_provider.dart';
import 'package:catalog/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget buildApp(){
  final cartRepository = CartRepositoryImpl();

  return ChangeNotifierProvider(
    create: (context) => CartProvider(repository: cartRepository),
    child: MyApp(),
  );
}
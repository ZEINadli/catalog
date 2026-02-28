import 'package:catalog/core/routes/app_router.dart';
import 'package:catalog/injection.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    buildApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRouter.catalog,
      routes: AppRouter.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
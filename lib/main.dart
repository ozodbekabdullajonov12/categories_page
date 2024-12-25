import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:lesson110/images/pages/categories_page.dart";
import 'package:lesson110/images/pages/home_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => CategoriesPage(),
    ),
    GoRoute(
      path: '/page2',
      builder: (context, state) => RecipeAppImage(),
    ),
  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}

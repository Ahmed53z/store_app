import 'package:flutter/material.dart';
import 'package:store_app/screens/home_page.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => const HomePage(),
      },
    );
  }
}

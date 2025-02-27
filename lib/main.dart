import 'package:flutter/material.dart';
import 'package:grocery_shop_app/intropage.dart';
import 'package:grocery_shop_app/model/card_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => card_modle(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Intropage(),
      ),
    );
  }
}

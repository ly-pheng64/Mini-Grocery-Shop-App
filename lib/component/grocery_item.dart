import 'package:flutter/material.dart';

// ignore: camel_case_types
class grocery_item_title extends StatelessWidget {
  final String itemname;
  final String itemprice;
  final String images;
  void Function()? onPressed;
  // ignore: prefer_typing_uninitialized_variables
  final color;
  grocery_item_title({
    super.key,
    required this.itemname,
    required this.itemprice,
    required this.images,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: color[200], borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              images,
              height: 65,
            ),
            Text(itemname),
            MaterialButton(
              onPressed: onPressed,
              color: color[800],
              child: Text(
                '\$$itemprice',
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

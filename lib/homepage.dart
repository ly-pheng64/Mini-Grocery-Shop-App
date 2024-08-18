import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_app/cart_page.dart';
import 'package:grocery_shop_app/component/grocery_item.dart';
import 'package:grocery_shop_app/model/card_model.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return CartPage();
          },
        )),
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.shopping_bag_rounded,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text('good morning'),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'let\'s order your fresh item  ',
                style: GoogleFonts.notoSerif(
                    fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Divider(
                thickness: 2,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'fresh item',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Expanded(
              child: Consumer<card_modle>(
                builder: (context, value, child) {
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                    itemCount: value.shopitem.length,
                    padding: const EdgeInsets.all(12),
                    itemBuilder: (BuildContext context, int index) {
                      return grocery_item_title(
                        itemname: value.shopitem[index][0],
                        itemprice: value.shopitem[index][1],
                        images: value.shopitem[index][2],
                        color: value.shopitem[index][3],
                        onPressed: () {
                          Provider.of<card_modle>(context, listen: false)
                              .add_to_cart(index);
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

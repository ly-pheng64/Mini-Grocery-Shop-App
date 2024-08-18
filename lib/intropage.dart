import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_app/homepage.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //logo
          Padding(
            padding:
                const EdgeInsets.only(left: 90, right: 90, bottom: 0, top: 160),
            child: Image.asset('lib/images/bag.png'),
          ),
          //text
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'We deliver groceries to you at your doorstep everyday ',
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const Text(
            'fresh item everday',
            style: TextStyle(color: Colors.grey),
          ),
          const Spacer(),
          //get start buttom
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => const Homepage())),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  'Get started',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}

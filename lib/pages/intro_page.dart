import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // logo
          Padding(
            padding: const EdgeInsets.only(
              top: 120,
              left: 80,
              right: 80,
              bottom: 40,
            ),
            child: Image.asset(
              'images/avocado.png',
            ),
          ),

          // we deliver groceries to your doorstep
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              'We deliver groceries at your doorstep',
              style: GoogleFonts.notoSerif(
                textStyle: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textAlign: TextAlign.center,
            ),
          ),

          const SizedBox(
            height: 16,
          ),

          // fresh items everyday
          Text(
            'Fresh items everyday',
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),

          const Spacer(),

          // get started button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          const Spacer(),
        ],
      ),
    );
  }
}

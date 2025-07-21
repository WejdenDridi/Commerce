import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home_page.dart'; 

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.inactiveGray,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/images/minia.png-removebg-preview.png'),
            const SizedBox(height: 1),
            const Text(
              "BE YOUR STYLE",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
            const SizedBox(height: 16),
            const Text(
              "Curated fashion pieces that reflect your unique identity",
              style: TextStyle(
                fontSize: 16,
                color: CupertinoColors.placeholderText,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 80),
            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 8, 8, 8),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(20),
                child: const Center(
                  child: Text(
                    "Shop NOW",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 160, 156, 156),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
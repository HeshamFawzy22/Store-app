import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Image.asset(
                'lib/images/nike.png',
                height: 100,
              ),
              const SizedBox(height: 150,),
              // title
              const Text(
                'Just Do It',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
              ),
              const SizedBox(height: 14,),
              // sub title
              const Text(
                'Brand new sneakers and custom kicks made with premium quality',
                style: TextStyle(color: Colors.grey, fontSize: 14,),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20,),
              // start new button
              GestureDetector(
                onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const HomePage(),)
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(22.0),
                    child: Center(
                      child: Text(
                        'Shop Now',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

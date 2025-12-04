import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(131, 16, 101, 229),
        title: const Text("Homepage", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),

      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // 🔹 TOP BANNER IMAGE (Hero/cover)
            Image.asset(
              "assets/home_banner.jpg",
              height: 280,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 24),

            const Text(
              "Leo Messi is the Goat!",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 16),

            // 🔹 Example image inside a Card
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
              margin: const EdgeInsets.all(15),
              child: Image.asset(
                "assets/gallery1.jpg",
                height: 160,
                width: 160,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 16),

            // 🔹 Another image directly in Column
            Image.asset(
              "assets/gallery2.jpg",
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

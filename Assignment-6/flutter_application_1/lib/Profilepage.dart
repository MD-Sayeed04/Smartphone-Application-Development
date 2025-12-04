import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 68, 78, 83),
        title: const Text("Profile Page", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // 🔹 PROFILE HEADER CONTAINER + IMAGE
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                border: Border.all(color: Colors.black, width: 3),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 96, 106, 125),
                    Color.fromARGB(49, 24, 255, 255),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: const [
                  BoxShadow(blurRadius: 8, spreadRadius: 2, offset: Offset(0, 4)),
                ],
              ),

              child: Column(
                children: [
                  const SizedBox(height: 10),

                  // ✅ Local Profile Image
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.black,
                    child: ClipOval(
                      child: Image.asset(
                        "assets/profile.jpg",
                        height: 155,
                        width: 155,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(height: 18),

                  const Text(
                    "MD Sayeed",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
                  ),

                  const Text(
                    "Flutter Developer • Leading University",
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 8),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // 🔹 Profile gallery section in Column (without new functions)
            Image.asset(
              "assets/gallery1.jpg",
              height: 180,
              width: 180,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 12),

            Image.asset(
              "assets/gallery2.jpg",
              height: 180,
              width: 180,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 25),

            // 🔹 Contact card with image above it for structure clarity
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              elevation: 5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
              child: const Padding(
                padding: EdgeInsets.all(18),
                child: Text(
                  "DM or Contact on sayeed2667@gmail.com.",
                  style: TextStyle(fontSize: 15, letterSpacing: 0.7),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

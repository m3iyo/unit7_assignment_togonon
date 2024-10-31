import 'package:flutter/material.dart';
import 'about_me.dart'; // Ensure this import points to your About_Me file

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Gesture and Navigation")),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.1), // Light red tint, adjustable opacity
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 350, // Fixed width for a slimmer look
                height: 554, // Increased height for a taller card
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Profile Image covering the top half of the card
                      Expanded(
                        child: ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(16),
                          ),
                          child: Image.asset(
                            'assets/test.jpg', // Replace with your image path
                            fit: BoxFit.fill, // Maintain fill to cover the area
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Lord Patrick Raizen G. Togonon, 22",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text("Student"),
                            const SizedBox(height: 4),
                            const Text("Leganes, Iloilo"),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Dislike Button
                                IconButton(
                                  icon: const Icon(Icons.clear, color: Colors.red, size: 40),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                const SizedBox(width: 50),
                                // Like Button
                                IconButton(
                                  icon: const Icon(Icons.favorite, color: Colors.green, size: 40),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const About_Me(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
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

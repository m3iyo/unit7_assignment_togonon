/* import 'package:unit7_assignment_togonon/components/tab_widget_1.dart'; */
import 'package:unit7_assignment_togonon/components/tab_widget_2.dart';
import 'package:flutter/material.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  bool showAdditionalInfo = false;

  // Toggle additional info display
  void _toggleAdditionalInfo() {
    setState(() {
      showAdditionalInfo = !showAdditionalInfo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text("About Me")), // Centered title
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person), text: "Personal Info"),
              Tab(icon: Icon(Icons.info), text: "Pictures"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // First Tab: Profile Card with Additional Info on the Right
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile Card with taller aspect ratio
                  AspectRatio(
                    aspectRatio: 3 / 4, // Adjusted for taller card
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
                                  top: Radius.circular(16)),
                              child: Image.asset(
                                'assets/test.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Lord Patrick Raizen \nG. Togonon, 22",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 4),
                                    Text("Student"),
                                    SizedBox(height: 4),
                                    Text("Leganes, Iloilo"),
                                  ],
                                ),
                                IconButton(
                                  icon: const Icon(Icons.info_outline),
                                  onPressed: _toggleAdditionalInfo,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  // Conditionally display additional info if showAdditionalInfo is true
                  if (showAdditionalInfo)
                    Container(
                      width: 320, // Fixed width for vertical orientation
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Additional Info",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(Icons.school),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text("West Visayas State University"),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(Icons.sports_esports),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text("Hobbies: Gaming, Trying New Things, Bullying"),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(Icons.star),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text("Taurus"),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(Icons.lightbulb),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text("Interests: Gaming and CyberSec"),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Bio",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 15),
                            Text(
                              ";",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const TabWidget2(),
          ],
        ),
      ),
    );
  }
}

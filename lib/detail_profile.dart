import 'package:flutter/material.dart';

class DetailProfile extends StatelessWidget {
  const DetailProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: const Color.fromARGB(255, 138, 155, 249),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 600,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/spider.jpg"), // Ganti dengan path gambar profil
              ),
              const SizedBox(height: 10),
              const Text(
                "Keyla Maharani",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              _buildCard("About", "I am a student at SMK Wikrama Bogor majoring in Software and Game Development. Games with expertise in creating websites using HTML, CSS, JavaScript, and PHP with Laravel framework.", const Color.fromARGB(255, 138, 155, 249)),
              const SizedBox(height: 10),
              _buildCard("History", "I am someone who can work together in a team with high discipline and efficiency, and have sufficient experience as a team leader.", Colors.white),
              const SizedBox(height: 10),
              _buildCard("Skill", "- Collaboration & Efficiency: Able to work with a team with effective communication \n- Problem Solving: Able to analyze and solve problems effectively.\n- Professional skills: HTML, CSS (Tailwind, Bootstrap), JavaScript, PHP (Laravel framework) \n- Team support applications: GitHub, Notion, Trello", const Color.fromARGB(255, 138, 155, 249)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(String title, String content, Color color) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              content,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DetailProfile extends StatelessWidget {
  const DetailProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 215, 245),
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: const Color.fromARGB(255, 150, 110, 200),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width < 800
                ? double.infinity
                : 800,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/download.jpg"),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Artika Sari Noor Cahayani",
                  style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 25, 10, 50),
                  ),
                  
                ),
                const SizedBox(height: 10),

                buildProfileCard(
                  title: "About",
                  content:
                      "I am a student at SMK Wikrama Bogor majoring in Software and Game Development. "
                      "Games with expertise in creating websites using HTML, CSS, JavaScript, and PHP with Laravel framework.",
                  color: const Color.fromARGB(255, 150, 110, 200),
                ),
                const SizedBox(height: 10),
                buildProfileCard(
                  title: "History",
                  content:
                      "I am a student at SMK Wikrama Bogor majoring in Software and Game Development (PPLG). I have experience working on various projects such as creating websites using HTML, CSS, JavaScript,"
                      "and developing web applications with PHP and the Laravel framework. I am also active in the IT Club, which helps me improve teamwork, discipline, and leadership skills.",
                ),
                const SizedBox(height: 10),
                buildProfileCard(
                  title: "Skill",
                  content:
                      "- HTML\n"
                      "- CSS\n"
                      "- JavaScript",
                  color: const Color.fromARGB(255, 150, 110, 200),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildProfileCard({
    required String title,
    required String content,
    Color color = Colors.white,
  }) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 4,
      child: Container(
        width: double.infinity,
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
              style: const TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}

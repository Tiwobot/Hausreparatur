import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/icon_v3_transparent.png',
              filterQuality: FilterQuality.medium,
              height: 30,
              width: 30,
            ),
            const Text('Haus'),
            const Text('reparatur', style: TextStyle(color: Color(0xFFB74D03))),
          ],
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RepairOption(
              imagePath: "assets/images/category_photo/plumbing.png",
              title: 'Plumbing',
              icon: Icons.water_damage,
            ),
            RepairOption(
              imagePath: "assets/images/category_photo/painter.jpg",
              title: 'Painting',
              icon: Icons.brush,
            ),
            RepairOption(
              imagePath: "assets/images/category_photo/electric.jpg",
              title: 'Electric Systems',
              icon: Icons.electrical_services,
            ),
            RepairOption(
              imagePath: "assets/images/category_photo/heating.jpg",
              title: 'Heating Solutions',
              icon: Icons.fireplace,
            ),
            RepairOption(
              imagePath: "assets/images/category_photo/other.jpg",
              title: 'Others',
              icon: Icons.build,
            ),
          ],
        ),
      ),
    );
  }
}

class RepairOption extends StatelessWidget {
  final String imagePath;
  final String title;
  final IconData icon;

  const RepairOption(
      {super.key,
      required this.title,
      required this.icon,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0),
      padding: const EdgeInsets.all(48.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: ListTile(
        focusColor: Color.fromARGB(255, 88, 88, 88),
        selectedColor: Color.fromARGB(255, 78, 78, 78),
        splashColor: Color.fromARGB(255, 78, 78, 78),
        title: Row(
          children: [
            const Spacer(),
            Text(
              title,
              style: GoogleFonts.ubuntu(
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        onTap: () {
          // Handle navigation to the respective repair option screen
        },
      ),
    );
  }
}

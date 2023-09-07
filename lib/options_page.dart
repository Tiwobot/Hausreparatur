import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('House Repairs App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RepairOption(
              title: 'Plumbing',
              icon: Icons.water_damage,
            ),
            RepairOption(
              title: 'Painting',
              icon: Icons.brush,
            ),
            RepairOption(
              title: 'Electric Systems',
              icon: Icons.electrical_services,
            ),
            RepairOption(
              title: 'Heating Solutions',
              icon: Icons.fireplace,
            ),
            RepairOption(
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
  final String title;
  final IconData icon;

  const RepairOption({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        onTap: () {
          // Handle navigation to the respective repair option screen
        },
      ),
    );
  }
}

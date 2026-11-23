import 'package:flutter/material.dart';
import 'package:waiting_room_app/waiting_room_timestamp.dart';

/// Carte affichant le nom d'un client et l'heure courante.
class WaitingRoomCard extends StatelessWidget {
  const WaitingRoomCard({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.person, size: 40),
            const SizedBox(height: 12),
            const Text('Hello,', style: TextStyle(fontSize: 16)),
            Text(
              name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const WaitingRoomTimestamp(),
          ],
        ),
      ),
    );
  }
}

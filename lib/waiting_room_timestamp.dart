import 'dart:async';

import 'package:flutter/material.dart';

/// Affiche l'heure courante et se rafraîchit chaque seconde.
class WaitingRoomTimestamp extends StatefulWidget {
  const WaitingRoomTimestamp({super.key});

  @override
  State<WaitingRoomTimestamp> createState() => _WaitingRoomTimestampState();
}

class _WaitingRoomTimestampState extends State<WaitingRoomTimestamp> {
  late DateTime _currentTime;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _currentTime = DateTime.now();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!mounted) return;
      setState(() {
        _currentTime = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final formattedTime = _currentTime.toString().split('.').first;

    return Text(
      'Current Time: $formattedTime',
      style: const TextStyle(fontSize: 14, color: Colors.black54),
    );
  }
}

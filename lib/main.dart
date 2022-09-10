import 'package:flutter/material.dart';
import 'package:practice_channels/screens/home/home.dart';

void main() {
  runApp(const PracticeChannels());
}

class PracticeChannels extends StatelessWidget {
  const PracticeChannels({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

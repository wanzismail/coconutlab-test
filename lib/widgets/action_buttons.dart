import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(elevation: 0),
          onPressed: () {},
          child: const Text('Start Ride'),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[200],
            foregroundColor: Colors.black,
            elevation: 0,
          ),
          onPressed: () {},
          child: const Text('Cancel Ride'),
        ),
      ],
    );
  }
}
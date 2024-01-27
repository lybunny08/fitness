import 'package:flutter/material.dart';

class Ready extends StatelessWidget {
  const Ready({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'READY TO',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Text(
            'WORKOUT',
            style: TextStyle(
                fontSize: 40,
                color: Color.fromARGB(255, 228, 97, 88),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

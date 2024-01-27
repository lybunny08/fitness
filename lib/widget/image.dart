import 'package:flutter/material.dart';

final List<String> images = [
  'images/biceps.jpeg',
  'images/triceps.jpeg',
  'images/squats.jpeg',
  'images/pullup.jpeg',
  'images/pushup.jpeg',
];

List<Widget> generateImageWidgets() {
  return images
      .map((e) => ClipRRect(
            child: Image.asset(
              e,
              width: 500,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15),
          ))
      .toList();
}

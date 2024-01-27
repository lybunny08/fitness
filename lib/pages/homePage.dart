import 'package:fitness_/Mediaquery.dart';
import 'package:fitness_/pages/details.dart';
import 'package:fitness_/widget/itemEexercce.dart';
import 'package:fitness_/widget/exercice.dart';
import 'package:fitness_/widget/exo.dart';
import 'package:fitness_/widget/imageSlide.dart';
import 'package:fitness_/widget/ready.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 20,
            ),
            Ready(),
            SizedBox(
              height: 20,
            ),
            ImageSlide(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Exercices',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Exercices()
          ],
        ),
      ),
    );
  }
}

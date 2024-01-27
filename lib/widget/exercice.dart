import 'package:fitness_/pages/details.dart';
import 'package:fitness_/widget/itemEexercce.dart';
import 'package:fitness_/widget/exo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Exercices extends StatelessWidget {
  const Exercices({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimationLimiter(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.80,
            ),
            itemCount: exos.length,
            itemBuilder: (context, index) =>
                AnimationConfiguration.staggeredGrid(
                  position: index,
                  columnCount: 2,
                  duration: const Duration(milliseconds: 380),
                  child: SlideAnimation(
                    child: FadeInAnimation(
                      delay: Duration(milliseconds: 900),
                      child: ItemExercice(
                          product: exos[index],
                          press: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailsScren(exo: exos[index])))),
                    ),
                  ),
                )),
      ),
    );
  }
}

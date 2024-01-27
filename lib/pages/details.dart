import 'package:fitness_/Mediaquery.dart';
import 'package:fitness_/widget/exo.dart';
import 'package:flutter/material.dart';

class DetailsScren extends StatelessWidget {
  final Exo exo;
  final CustomSize _size = CustomSize();
  DetailsScren({
    super.key,
    required this.exo,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  width: _size.width(context),
                  height: 300,
                  child: Image.asset(
                    exo.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 30, left: 20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromARGB(255, 228, 97, 88)),
                  child: Image.asset('images/left-chevron.png'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '${exo.title} exercices',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

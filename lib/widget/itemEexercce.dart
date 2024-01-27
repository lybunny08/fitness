import 'package:fitness_/Mediaquery.dart';
import 'package:fitness_/widget/exo.dart';
import 'package:flutter/material.dart';


class ItemExercice extends StatelessWidget {
  final CustomSize _size = CustomSize();
  final Exo product;
  final VoidCallback press;

  ItemExercice({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: _size.height(context),
        width: _size.width(context),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            product.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

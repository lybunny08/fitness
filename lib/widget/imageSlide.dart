import 'package:fitness_/widget/image.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSlide extends StatefulWidget {
  const ImageSlide({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ImageSlideState createState() => _ImageSlideState();
}

class _ImageSlideState extends State<ImageSlide> {
  late CarouselController _carouselController;
  late Timer _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _carouselController = CarouselController();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_currentPage < images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _carouselController.animateToPage(_currentPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: generateImageWidgets(),
      carouselController: _carouselController,
      options: CarouselOptions(
        enlargeCenterPage: true,
        onPageChanged: (index, reason) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
    );
  }
}

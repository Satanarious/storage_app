import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:storage_app/widgets/upgrade_card.dart';
import 'your_storage_card.dart';

class HomeCarousel extends StatefulWidget {
  const HomeCarousel({Key? key}) : super(key: key);

  @override
  State<HomeCarousel> createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  @override
  Widget build(BuildContext context) {
    double _carouselIndex = 0.0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          CarouselSlider(
            items: const [
              YourStrorageCard(),
              UpgradeCard(),
            ],
            options: CarouselOptions(
              height: 200,
              viewportFraction: 1,
              onPageChanged: (index, reason) => setState(() {
                _carouselIndex = index.toDouble();
              }),
            ),
          ),
          Positioned.fill(
            bottom: 10,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: DotsIndicator(
                position: _carouselIndex,
                dotsCount: 2,
                decorator: const DotsDecorator(
                  activeColor: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

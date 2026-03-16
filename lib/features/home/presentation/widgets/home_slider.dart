import 'package:carousel_slider/carousel_slider.dart';
import 'package:crafty_bay/app/app_colors.dart';
import 'package:flutter/material.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  final ValueNotifier<int> _currentIndex = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              _currentIndex.value = index;
            },
            height: 180.0,
            autoPlay: true,
            viewportFraction: 1.0,
          ),

          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: .circular(8),
                  ),
                  child: Text('text $i', style: TextStyle(fontSize: 16.0)),
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 10),
        ValueListenableBuilder(
          valueListenable: _currentIndex,
          builder: (context, value, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 5; i++)
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    width: 13,
                    height: 13,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: value == i ? Colors.white : AppColors.themeColor,
                        width: 1,
                      ),
                      color: value == i ? AppColors.themeColor : Colors.white,
                    ),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}

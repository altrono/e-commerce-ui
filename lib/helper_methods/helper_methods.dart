// building the indicators
import 'package:e_commerce_app_ui/utils/colors.dart';
import 'package:flutter/material.dart';

List<Widget>? buildIndicators(){
  List<Widget> list = [];
  for (int i = 0; i < 4; i++) {
    list.add(i == 1 ? indicator(true) : indicator(false));
  }
  return list;
}

Widget indicator(bool isActive) {
  return AnimatedContainer(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      duration: const Duration(milliseconds: 150),
      height: 8.0,
      width: isActive ? 30.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? kOrangeColor : Colors.grey,
        borderRadius: BorderRadius.circular(30)
      ),
  );
}
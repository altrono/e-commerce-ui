import 'dart:math';

import 'package:flutter/material.dart';

class ImageListView extends StatefulWidget {
  final int startIndex;
  const ImageListView({Key? key, required this.startIndex}) : super(key: key);

  @override
  State<ImageListView> createState() => _ImageListViewState();
}

class _ImageListViewState extends State<ImageListView> {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 1.96*pi,
      child: SizedBox(),
    );
  }
}

import 'package:flutter/material.dart';

class SpaceWidget extends StatelessWidget {
  const SpaceWidget({super.key, required this.width, required this.height});

  const SpaceWidget.digits({super.key})
      : width = 20,
        height = 22;

  const SpaceWidget.calc({super.key})
      : width = 20,
        height = 147;

  const SpaceWidget.result({super.key})
      : width = 20,
        height = 3;

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}

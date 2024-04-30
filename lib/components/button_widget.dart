import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.text, this.filled = false });

  final String text;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    final btnStyle = ElevatedButton.styleFrom(
        fixedSize: const Size(62, 60),
        alignment: Alignment.center,
        backgroundColor: filled ? const Color.fromRGBO(173, 225, 255, 1) : const Color.fromRGBO(255, 255, 255, 1),
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // <-- Radius
        )

    );

    final textStyle = TextStyle(
        color: filled ? const Color.fromRGBO(15, 157, 255, 1) : const Color.fromRGBO(56, 185, 255, 1),
        fontSize: 32,
        letterSpacing:
        0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1);

    return ElevatedButton(
        onPressed: () {},
        style: btnStyle,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              text,
              textAlign: TextAlign.left,
              style: textStyle,
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_calc/components/button_widget.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final btnStyle = ElevatedButton.styleFrom(
        fixedSize: const Size(62, 60),
        alignment: Alignment.center,
        backgroundColor: const Color.fromRGBO(247, 248, 251, 1),
        elevation: 0.0,
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // <-- Radius
        )

    );

    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Text(
        text,
        textAlign: TextAlign.left,
        style: const TextStyle(
            color: Color.fromRGBO(66, 66, 66, 1),
            fontSize: 48,
            letterSpacing: 0,
            fontWeight: FontWeight.normal,
            height: 1),
      ),
      ElevatedButton(
          onPressed: () {},
          style: btnStyle,
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(Icons.backspace_outlined),
            ],
          ))
    ]);
  }
}

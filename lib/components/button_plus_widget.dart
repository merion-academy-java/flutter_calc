import 'package:flutter/material.dart';


class ButtonPlusWidget extends StatelessWidget {
  const ButtonPlusWidget({super.key});



  @override
  Widget build(BuildContext context) {
    final btnStyle = ElevatedButton.styleFrom(
        fixedSize: const Size(62, 136),
        alignment: Alignment.center,
        backgroundColor: const Color.fromRGBO(173, 225, 255, 1),
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // <-- Radius
        )

    );

    const textStyle = TextStyle(
        color: Color.fromRGBO(15, 157, 255, 1),
        fontSize: 32,
        letterSpacing:
        0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1);

    return ElevatedButton(
        onPressed: () {},
        style: btnStyle,
        child:const Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              '+',
              textAlign: TextAlign.left,
              style: textStyle,
            ),
          ],
        ));
  }
}

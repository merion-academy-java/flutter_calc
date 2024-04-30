import 'package:flutter/material.dart';
import 'package:flutter_calc/components/button_plus_widget.dart';
import 'package:flutter_calc/components/button_widget.dart';
import 'package:flutter_calc/components/space_widget.dart';

class KeyboardWidget extends StatelessWidget {
  const KeyboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,

      child: const Row(
        children: [
          Column(
            children: [
              ButtonWidget(text: "Ac"),
              SpaceWidget.digits(),
              ButtonWidget(text: "7"),
              SpaceWidget.digits(),
              ButtonWidget(text: "4"),
              SpaceWidget.digits(),
              ButtonWidget(text: "1"),
              SpaceWidget.digits(),
              ButtonWidget(text: "+/-"),
            ],
          ),
          SpaceWidget.digits(),
          Column(
            children: [
              ButtonWidget(
                text: "%",
                filled: true,
              ),
              SpaceWidget.digits(),
              ButtonWidget(text: "8"),
              SpaceWidget.digits(),
              ButtonWidget(text: "5"),
              SpaceWidget.digits(),
              ButtonWidget(text: "2"),
              SpaceWidget.digits(),
              ButtonWidget(text: "0"),
            ],
          ),
          SpaceWidget.digits(),
          Column(
            children: [
              ButtonWidget(
                text: ":",
                filled: true,
              ),
              SpaceWidget.digits(),
              ButtonWidget(text: "9"),
              SpaceWidget.digits(),
              ButtonWidget(text: "6"),
              SpaceWidget.digits(),
              ButtonWidget(text: "3"),
              SpaceWidget.digits(),
              ButtonWidget(text: "."),
            ],
          ),
          SpaceWidget.digits(),
          Column(
            children: [
              ButtonWidget(
                text: "*",
                filled: true,
              ),
              SpaceWidget.digits(),
              ButtonWidget(
                text: "-",
                filled: true,
              ),
              SpaceWidget.digits(),
              ButtonPlusWidget(),
              SpaceWidget.digits(),
              ButtonWidget(
                text: "=",
                filled: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}

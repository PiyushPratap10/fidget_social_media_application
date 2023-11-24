import 'package:flutter/material.dart';

import '../utils/colors.dart';

class FinishButton extends StatelessWidget {
  const FinishButton({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        width: 250,
        height: 48,
        decoration: BoxDecoration(
          boxShadow: Theme.of(context).brightness == Brightness.dark
              ? [
                  const BoxShadow(
                      color: Color.fromARGB(255, 60, 60, 60),
                      offset: Offset(0, 2),
                      blurRadius: 2)
                ]
              : [
                  const BoxShadow(
                      color: Color.fromARGB(255, 168, 168, 168),
                      offset: Offset(0, 4),
                      blurRadius: 2)
                ],
          borderRadius: BorderRadius.circular(40),
          color: buttonGreen,
        ),
        child: Text(
          'FINISH',

          style: TextStyle(
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : const Color.fromARGB(255, 36, 36, 36),
            fontSize: 20,
          ),
          // textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

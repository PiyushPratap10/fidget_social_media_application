import 'package:fidget_application/utils/colors.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key,required this.onPressed});
  
  final void Function() onPressed;

  @override
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
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
          color: buttonBlue,
        ),
        child: Text(
          'LOG IN',
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

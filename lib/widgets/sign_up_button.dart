import 'package:fidget_application/screens/sign_up_screen.dart';
import 'package:fidget_application/utils/colors.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => const SignupScreen()));
      },
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
          'SIGN UP',

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

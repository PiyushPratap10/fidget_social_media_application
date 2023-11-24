
import 'package:fidget_application/widgets/sign_in_button.dart';
import 'package:fidget_application/widgets/sign_up_button.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 35),
          width: double.infinity,
          height: 600,
          decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark
                ? const Color.fromARGB(255, 60, 60, 60)
                : Colors.white,
            border: Border.all(
              color: Theme.of(context).brightness == Brightness.dark
                  ? const Color.fromARGB(255, 42, 42, 42)
                  : const Color.fromARGB(255, 224, 224, 224),
            ),
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(44),
                bottomRight: Radius.circular(44)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: Container(),
              ),
              Theme.of(context).brightness == Brightness.light
                  ? const Image(
                      image: AssetImage('assets/images/fidget dark.png'))
                  : const Image(
                      image: AssetImage('assets/images/fidget light.png')),
              const SizedBox(
                height: 100,
              ),
              Text(
                'Already have an account! Then',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 12,
              ),
              const SignInButton(),
              const SizedBox(
                height: 12,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  margin: const EdgeInsets.all(12),
                  height: 0,
                  width: 110,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 0.5,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.black12
                              : Colors.grey)),
                ),
                const Text(
                  'or',
                  style: TextStyle(fontSize: 15),
                ),
                Container(
                  margin: const EdgeInsets.all(12),
                  height: 0,
                  width: 110,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 0.5,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.black12
                              : Colors.grey)),
                ),
              ]),
              const SizedBox(
                height: 12,
              ),
              const SignUpButton(),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:fidget_application/screens/sign_up_screen.dart';
import 'package:fidget_application/widgets/log_in_button.dart';
import 'package:fidget_application/widgets/text_input_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen>{

    final _userNameController = TextEditingController();
    final _passwordController = TextEditingController();

    @override
    void dispose() {
      super.dispose();
      _userNameController.dispose();
      _passwordController.dispose();
    }

    @override
    Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(flex: 1, child: Container()),
            Theme.of(context).brightness == Brightness.light
                ? const Image(
                    width: 220,
                    image: AssetImage('assets/images/fidget dark.png'))
                : const Image(
                    width: 220,
                    image: AssetImage('assets/images/fidget light.png')),
            const SizedBox(
              height: 25,
            ),
            TextInputWidget(
              textEditingController: _userNameController,
              hintText: 'Email',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 12,
            ),
            TextInputWidget(
              textEditingController: _passwordController,
              hintText: 'Password',
              textInputType: TextInputType.name,
              isPass: true,
            ),
            const SizedBox(
              height: 12,
            ),
            LoginButton(onPressed: (){},),
            Flexible(child: Container()),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Don't have an account? "),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (ctx) => const SignupScreen()));
                  },
                  child: const Text('Sign up'),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}


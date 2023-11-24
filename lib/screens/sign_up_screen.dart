import 'dart:typed_data';

import 'package:fidget_application/screens/login_screen.dart';
import 'package:fidget_application/utils/util_function.dart';
import 'package:fidget_application/widgets/finish_button.dart';
import 'package:fidget_application/widgets/sign_in_button.dart';
// import 'package:fidget_application/widgets/sign_up_button.dart';
import 'package:fidget_application/widgets/text_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:flutter/widgets.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() {
    return _SignupScreenState();
  }
}

class _SignupScreenState extends State<SignupScreen> {
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  Uint8List? _image;

  void selectImage() async {
    Uint8List image = await pickImage(ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(child: Container()),
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
            Stack(
              children: [
                _image != null
                    ? CircleAvatar(
                        radius: 60,
                        backgroundImage: MemoryImage(_image!),
                      )
                    : const CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                            'https://tse4.mm.bing.net/th?id=OIP.OesLvyzDO6AvU_hYUAT4IAHaHa&pid=Api&P=0&h=180'),
                      ),
                Positioned(
                    bottom: -6,
                    right: -4,
                    child: IconButton(
                        style: ButtonStyle(
                            shadowColor: MaterialStatePropertyAll(
                                Theme.of(context).colorScheme.background)),
                        // color:
                        //     Theme.of(context).colorScheme.secondaryContainer,
                        onPressed: selectImage,
                        icon: const Icon(Icons.add_a_photo))),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            TextInputWidget(
                textEditingController: _emailController,
                hintText: 'Email',
                textInputType: TextInputType.emailAddress),
            const SizedBox(
              height: 12,
            ),
            TextInputWidget(
                textEditingController: _usernameController,
                hintText: 'Username',
                textInputType: TextInputType.name),
            const SizedBox(
              height: 12,
            ),
            TextInputWidget(
              textEditingController: _passwordController,
              hintText: 'Password',
              textInputType: TextInputType.text,
              isPass: true,
            ),
            const SizedBox(
              height: 12,
            ),
            const FinishButton(),
            Flexible(flex: 2, child: Container()),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Already have an account! "),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (ctx) => const LoginScreen()));
                  },
                  child: const Text('Sign in'),
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

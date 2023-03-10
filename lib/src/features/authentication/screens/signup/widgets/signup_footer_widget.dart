import 'package:dev_mate/src/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import '../../../../../constants/image_string.dart';
import '../../../../../constants/text_string.dart';
import 'package:get/get.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(tGoogleLogoImage),
                width: 20,
              ),
              label: Text(tSignInWithGoogle.toUpperCase())),
        ),
        TextButton(
            onPressed: () {
              Get.to(() => const LoginScreen());
            },
            child: Text.rich(TextSpan(children: [
              TextSpan(
                  text: tAlreadyHaveAnAccount,
                  style: Theme.of(context).textTheme.bodyText1),
              TextSpan(text: tLogin.toUpperCase())
            ])))
      ],
    );
  }
}

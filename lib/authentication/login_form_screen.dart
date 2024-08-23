import 'package:flutter/material.dart';
import 'package:tiktok_clone/authentication/email_screen.dart';
import 'package:tiktok_clone/authentication/widgets/form_button.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class LoginFormScreen extends StatefulWidget {
  const LoginFormScreen({super.key});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
  void _onNextTap() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const EmailScreen(),
      ),
    );
  }

  void _onScaffoldTap() {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Log in",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.size36,
        ),
        child: Column(
          children: [
            Gaps.v28,
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
            ),
            Gaps.v16,
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
            ),
            Gaps.v28,
            GestureDetector(
              onTap: _onNextTap,
              child: const FormButton(
                disabled: false,
                buttonName: 'Log in',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

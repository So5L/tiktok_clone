import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/authentication/username_screen.dart';
import 'package:tiktok_clone/authentication/widgets/auth_button.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/authentication/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  void onLoginTap(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const LoginScreen(),
    ));
  }

  void _onEmailTap(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const UsernameScreen(),
    ));
  }

  void _onScaffoldTap() {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onScaffoldTap,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.size40),
            child: Column(
              children: [
                Gaps.v80,
                const Text(
                  "Sign up for TikTok",
                  style: TextStyle(
                    fontSize: Sizes.size24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Gaps.v20,
                const Text(
                  "Create a profile, follow other accounts, make your own videos, and more.",
                  style: TextStyle(
                    fontSize: Sizes.size16,
                    color: Colors.black45,
                  ),
                  textAlign: TextAlign.center,
                ),
                Gaps.v40,
                AuthButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.solidUser,
                  ),
                  text: "Use phone or email",
                  screenPage: _onEmailTap,
                ),
                AuthButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.apple,
                  ),
                  text: "Continue with Apple",
                  screenPage: onLoginTap,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey[50],
          elevation: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Sizes.size3,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                ),
                Gaps.h5,
                GestureDetector(
                  onTap: () => onLoginTap(context),
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

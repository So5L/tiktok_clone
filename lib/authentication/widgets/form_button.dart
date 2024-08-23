import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class FormButton extends StatelessWidget {
  const FormButton({
    super.key,
    required this.disabled,
    required this.buttonName,
  });

  final bool disabled;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.size5),
          color:
              disabled ? Colors.grey.shade300 : Theme.of(context).primaryColor,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size16,
        ),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 150),
          style: TextStyle(
            color: disabled ? Colors.grey.shade400 : Colors.white,
            fontWeight: FontWeight.w600,
          ),
          child: Text(
            buttonName,
            style: const TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

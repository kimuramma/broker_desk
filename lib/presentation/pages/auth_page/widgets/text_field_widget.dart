import 'package:broker_desk/constants.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key, required this.labelText, this.obscure});
  final String labelText;
  final bool? obscure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      child: Center(
        child: SizedBox(
          width: 400,
          child: TextField(
            obscureText: obscure ?? false,
            decoration: InputDecoration(
              labelText: labelText,

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

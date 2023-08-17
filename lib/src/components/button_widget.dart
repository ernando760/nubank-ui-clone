import 'package:flutter/material.dart';
import 'package:nubank_ui_clone/src/extensions/context_extension.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.text, required this.onPressed});
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            backgroundColor: context.primary),
        child: Text(
          text,
          style: context.textSmall?.copyWith(fontSize: 16, color: Colors.white),
        ));
  }
}

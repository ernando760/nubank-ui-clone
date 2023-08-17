import 'package:flutter/material.dart';

class ButtonBottomBar extends StatelessWidget {
  const ButtonBottomBar(
      {super.key, required this.icon, required this.onPressed});
  final IconData icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        iconSize: 25,
        style: ElevatedButton.styleFrom(fixedSize: const Size(10, 10)),
      ),
    );
  }
}

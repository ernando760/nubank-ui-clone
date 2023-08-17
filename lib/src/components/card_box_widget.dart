import 'package:flutter/material.dart';
import 'package:nubank_ui_clone/src/extensions/context_extension.dart';

class CardBoxWidget extends StatelessWidget {
  const CardBoxWidget(
      {super.key,
      this.icon,
      required this.text,
      this.width,
      this.height,
      this.padding = const EdgeInsets.all(10),
      this.margin});
  final double? width;
  final double? height;
  final IconData? icon;
  final Widget text;
  final EdgeInsets padding;
  final EdgeInsets? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: context.opacityPrimaryContainer(.5)),
        child: icon != null
            ? Row(
                children: [
                  Icon(
                    icon,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  text
                ],
              )
            : text);
  }
}

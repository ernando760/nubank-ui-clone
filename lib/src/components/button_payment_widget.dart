import 'package:flutter/material.dart';
import 'package:nubank_ui_clone/src/extensions/context_extension.dart';

class ButtonPaymentWidget extends StatelessWidget {
  const ButtonPaymentWidget(
      {super.key,
      required this.icon,
      this.onPressed,
      required this.title,
      this.paddingTop = 0});
  final IconData icon;
  final void Function()? onPressed;
  final String title;
  final double? paddingTop;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: paddingTop ?? 0),
      alignment: Alignment.bottomCenter,
      height: MediaQuery.sizeOf(context).height,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: onPressed,
              icon: Icon(icon),
              style: IconButton.styleFrom(
                  fixedSize: const Size(70, 70),
                  backgroundColor: context.opacityPrimaryContainer(.5),
                  padding: const EdgeInsets.all(10))),
          const SizedBox(height: 5),
          Text(
            title,
            textAlign: TextAlign.center,
            style: context.textMedium
                ?.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}

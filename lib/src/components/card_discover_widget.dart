import 'package:flutter/material.dart';
import 'package:nubank_ui_clone/src/components/button_widget.dart';
import 'package:nubank_ui_clone/src/extensions/context_extension.dart';

class CardDiscoverWidget extends StatelessWidget {
  const CardDiscoverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: context.opacityPrimaryContainer(.5),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      child: Column(
        children: [
          SizedBox(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.asset("assets/image_nu.png", fit: BoxFit.cover),
              )),
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Portabilidade de salário",
                  style:
                      context.textSmall?.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sua liberdade financeira comeca com você escolhendo...",
                  style: context.textSmall?.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ButtonWidget(text: "Conhecer", onPressed: () {})
              ],
            ),
          ),
        ],
      ),
    );
  }
}

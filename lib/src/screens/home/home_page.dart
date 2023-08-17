import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nubank_ui_clone/src/components/button_bottom_bar.dart';
import 'package:nubank_ui_clone/src/components/button_payment_widget.dart';
import 'package:nubank_ui_clone/src/components/button_widget.dart';
import 'package:nubank_ui_clone/src/components/card_box_widget.dart';
import 'package:nubank_ui_clone/src/components/card_discover_widget.dart';
import 'package:nubank_ui_clone/src/extensions/context_extension.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildAppBar(context),
                  _buildAccount(context),
                  _buildButtonPayments(context),
                  _buildCardBox(context),
                  Divider(
                    height: 2,
                    color: context.primaryContainer,
                  ),
                  _buildMyCreditCard(context),
                  Divider(
                    height: 2,
                    color: context.primaryContainer,
                  ),
                  _buildDiscoverMore(context)
                ],
              ),
            ),
          ),
          _buildBottomNavBar(context)
        ],
      )),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.all(25),
      color: context.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xFF9C3BDC),
                  child: Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove_red_eye_outlined),
                        color: Colors.white,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.question_mark,
                              color: Colors.white)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.group_add_outlined,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
            "Olá, Ernando",
            style: context.textMedium?.copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget _buildAccount(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Conta",
                  style:
                      context.textMedium?.copyWith(fontWeight: FontWeight.w600),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                      color: Colors.grey,
                      weight: 20,
                    ))
              ],
            ),
          ),
          Text("R\$ 1.000,00",
              style: context.textMedium?.copyWith(fontWeight: FontWeight.w600))
        ],
      ),
    );
  }

  Widget _buildButtonPayments(BuildContext context) {
    return SizedBox(
      height: 150,
      width: MediaQuery.sizeOf(context).width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(
          left: 10,
        ),
        children: [
          ButtonPaymentWidget(
            icon: Icons.pix_outlined,
            title: "Área Pix",
            onPressed: () {},
          ),
          ButtonPaymentWidget(
            icon: FontAwesomeIcons.barcode,
            title: "Pagar",
            onPressed: () {},
          ),
          ButtonPaymentWidget(
            paddingTop: 25,
            icon: FontAwesomeIcons.handHoldingDollar,
            title: "Pegar empréstimo",
            onPressed: () {},
          ),
          ButtonPaymentWidget(
            icon: FontAwesomeIcons.moneyBillTransfer,
            title: "Transferir",
            onPressed: () {},
          ),
          ButtonPaymentWidget(
            paddingTop: 25,
            icon: Icons.smartphone_outlined,
            title: "Recarga de celular",
            onPressed: () {},
          ),
          ButtonPaymentWidget(
            icon: FontAwesomeIcons.box,
            title: "Caixinhas",
            onPressed: () {},
          ),
          ButtonPaymentWidget(
            icon: FontAwesomeIcons.moneyBill,
            title: "Cobrar",
            onPressed: () {},
          ),
          ButtonPaymentWidget(
            icon: Icons.bar_chart,
            title: "Investir",
            onPressed: () {},
          ),
          ButtonPaymentWidget(
            icon: FontAwesomeIcons.heart,
            title: "Doação",
            onPressed: () {},
          ),
          ButtonPaymentWidget(
            icon: FontAwesomeIcons.piggyBank,
            title: "Depositar",
            onPressed: () {},
          ),
          ButtonPaymentWidget(
            paddingTop: 25,
            icon: FontAwesomeIcons.globe,
            title: "Transferir Internac.",
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildCardBox(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CardBoxWidget(
            margin: const EdgeInsets.only(right: 20),
            text: Text(
              "Meus cartões",
              style: context.textSmall
                  ?.copyWith(fontWeight: FontWeight.w600, fontSize: 14),
            ),
            icon: Icons.credit_card_outlined,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardBoxWidget(
                    padding: const EdgeInsets.all(25),
                    text: Text.rich(
                        textScaleFactor: .9,
                        TextSpan(text: "Novidade! ", children: [
                          TextSpan(
                              text:
                                  "Conheça a ferramenta de Controle de Gastos do Nubank",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ))
                        ]),
                        style: context.textSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Theme.of(context).colorScheme.primary)),
                    width: 250,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CardBoxWidget(
                    padding: const EdgeInsets.all(25),
                    text: Text(
                        "Novidade! Conheça a ferramenta de Controle de Gastos do Nubank",
                        textScaleFactor: .9,
                        style: context.textSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        )),
                    width: 245,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
        height: 50,
        width: 200,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: context.opacityPrimaryContainer(0.8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ButtonBottomBar(
                icon: FontAwesomeIcons.arrowRightArrowLeft, onPressed: () {}),
            ButtonBottomBar(
                icon: FontAwesomeIcons.dollarSign, onPressed: () {}),
            ButtonBottomBar(
                icon: FontAwesomeIcons.bagShopping, onPressed: () {}),
          ],
        ));
  }

  Widget _buildMyCreditCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.credit_card_outlined),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Cartão de crédito",
            style: context.textMedium,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Peca seu cartão de crédito sem anuidade e tenha mais controle da sua vida financeira.",
            style: context.textSmall?.copyWith(fontSize: 14),
          ),
          const SizedBox(
            height: 15,
          ),
          ButtonWidget(text: "Pedir Cartão", onPressed: () {})
        ],
      ),
    );
  }

  Widget _buildDiscoverMore(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Descubra mais", style: context.textMedium),
          const SizedBox(height: 15),
          const SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CardDiscoverWidget(),
                      CardDiscoverWidget(),
                      CardDiscoverWidget()
                    ],
                  ))),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

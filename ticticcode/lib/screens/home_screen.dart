import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ticticcode/style/colors.dart';
import 'package:ticticcode/style/font.dart';
import 'package:ticticcode/style/spacings.dart'; //import celui la et pas un autre, c'est le bon pas les autres

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  final items = [
    'Total à payer',
    'Total à recevoir',
    'Dernière transaction',
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: kVerticalPaddingL,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipOval(
                  child: Image.asset(
                    "assets/img/dog.png",
                    width: kProfileSize,
                    height: kProfileSize,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: kVerticalPaddingL,
              ),
              const Text(
                "Bonjour Marvin!",
                style: kTitleHome,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: kVerticalPadding,
                ),
                height: 135,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/back-slider.png")),
                ),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Row(children: [
                      index == 0
                          ? const SizedBox(
                              width: kHorizontalPadding,
                            )
                          : Container(),
                      Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: kHorizontalPaddingS,
                            vertical: kVerticalPaddingS,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15) ,
                            color: kBackgroundColor.withOpacity(0.7),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                items[index],
                                textAlign: TextAlign.right,
                                style: kTextSideBar,
                              ),
                              Text(
                                "${Random().nextInt(1000)}€",
                                style: kTitleHome,
                              )
                            ],
                          )),
                      const SizedBox(
                        width: kHorizontalPadding,
                      )
                    ]);
                  },
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          ),
        ),
      ),
    ); //indispensable pour le home screen car nous avons un burger menu
  }
}

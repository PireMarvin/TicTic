import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ticticcode/screens/home_screen.dart';
import 'package:ticticcode/screens/register.dart';

import '../main_button.dart';
import '../style/font.dart';
import '../style/spacings.dart';

class Welcome extends StatelessWidget {
  static const routeName = '/';

  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/back1.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: kVerticalPaddingL),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/icons/logo.svg", height: kProfileSize,),
                const SizedBox(height: kVerticalPaddingL,),
                const Text("Bonjour!", style: kItalicText,),
                const SizedBox(height: kVerticalPaddingL,),
                MainButton(text: 'Continuer sans compte', onTap: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                }, isMain: true),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MainButton(text: 'Je me connecte', onTap: () {}, isMain: false),
                    MainButton(text: 'Créer mon compte',
                        onTap: () => Navigator.pushNamed(context, Register.routeName),
                        isMain: false),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
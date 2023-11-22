import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ticticcode/widgets/forms/text_input.dart';

import '../main_button.dart';
import '../style/font.dart';
import '../style/spacings.dart';

class Register extends StatelessWidget {
  static const routeName = '/register';
  final _registerKey = GlobalKey<FormState>();

  Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/back1.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: kVerticalPaddingL),
            child: Form(
              key: _registerKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/icons/logo.svg", height: kProfileSize,),
                  TextInput(prefixIcon: Icons.person, hintText: 'Toto', labelText: 'Votre prenom', validator: (String? value) {
                    if(value == null || value.trim().isEmpty) {
                      return 'Veuillez renseigner un prenom!';
                    }
                  },
                  ),
                  MainButton(text: 'Créer mon compte', onTap: () {
                    if(_registerKey.currentState != null && _registerKey.currentState!.validate()) {

                    }
                  })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

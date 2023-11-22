import 'package:flutter/material.dart';
import 'package:ticticcode/screens/home_screen.dart';
import 'package:ticticcode/screens/register.dart';
import 'package:ticticcode/screens/welcome.dart';



Map<String, WidgetBuilder> routes = {
  Welcome.routeName : (context) => const Welcome(),
  Register.routeName : (context) => Register(),
  HomeScreen.routeName : (context) =>  HomeScreen(),

};
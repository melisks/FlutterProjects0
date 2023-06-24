import 'package:flutter/material.dart';
import 'package:test1/other_pages/MainPage.dart';
import 'package:test1/other_pages/splash.dart';
import 'package:test1/other_pages/login.dart';
import 'package:test1/other_pages/forgetpass.dart';
import 'package:test1/other_pages/register_sign_up.dart';
import 'package:test1/other_pages/home.dart';
import 'package:test1/other_pages/location.dart';
import 'package:test1/other_pages/setting.dart';
import 'package:test1/other_pages/contact_us.dart';
import 'package:test1/other_pages/about_us.dart';
import 'package:test1/other_pages/help.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Splash(),
        '/login': (context) => const Login(),
        '/passchanger': (context) => const passchanger(),
        '/sign_up': (context) => const Sign_up(),
        '/home': (context) => const Home(),
        '/location': (context) => const Location(),
        '/controller': (context) => MainPage(),
        '/setting': (context) => const setting(),
        '/contact': (context) => const contact_us(),
        '/about_us': (context) => const about_us(),
        '/help': (context) => const help(),
      },
    ));

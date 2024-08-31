import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpractise1/Navigator/login.dart';
import 'package:flutterpractise1/Navigator/loginscreen2.dart';
import 'package:flutterpractise1/Navigator/profilepage.dart';
import 'package:flutterpractise1/Navigator/screen1.dart';
import 'package:flutterpractise1/Navigator/screen2.dart';
import 'package:flutterpractise1/Navigator/screen3.dart';

class myRoutes{
  static Route<dynamic> generateRoute(RouteSettings settings)
  {
    switch (settings.name)
    {
      case '/' :
        return MaterialPageRoute(builder: (_) => login());
      case '/screen1':
        return MaterialPageRoute(builder: (_) => screen1());
      case '/screen2':
        return MaterialPageRoute(builder: (_) => screen2(arguments: settings.arguments));
      case '/screen3':
        return MaterialPageRoute(builder: (_) => screen3());
      case '/profilepage':
        return MaterialPageRoute(builder: (_) => profilepage());
      case '/loginscreen2':
        return MaterialPageRoute(builder: (_) => loginscreen2());

      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(child: Text('No route defined for ${settings.name}')),
        ),);
    }
  }
}
import 'package:flutter/material.dart';
import 'package:flutterpractise1/Navigator/login.dart';
import 'package:flutterpractise1/Navigator/screen1.dart';
import 'package:flutterpractise1/Navigator/screen2.dart';
import 'package:flutterpractise1/Navigator/screen3.dart';

import 'package:flutterpractise1/routes.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
     onGenerateRoute: myRoutes.generateRoute,
      //home: row_colomn(),
    ),
  );
}

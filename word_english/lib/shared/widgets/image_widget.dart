import 'package:flutter/material.dart';

Widget ImagemWidget() {
  return Container(
    height: 200,
    alignment: Alignment.center,
    child: Image.asset(
      'assets/login.png',
      fit: BoxFit.fill,
    ),
  );
}
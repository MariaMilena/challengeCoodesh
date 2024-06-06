import 'package:flutter/material.dart';

Widget fieldWidget({required Widget child}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.deepPurple.withOpacity(.3),
    ),
    child: child,
  );
}

import 'package:flutter/material.dart';

Widget buttonWidget({final formKey, String text = '', botaoCadastro}) {
  return Row(
    children: [
      Expanded(
        child: Container(
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.deepPurple
          ),
          child: TextButton(
            onPressed: () {
              if(formKey!.currentState!.validate()) {}
              botaoCadastro;
            },
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

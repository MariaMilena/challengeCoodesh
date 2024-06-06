import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:word_english/pages/login/register.dart';

import '../../mobx_store/user_store.dart';
import '../../shared/widgets/field_widget.dart';
import '../../shared/widgets/image_widget.dart';
import 'shared/button_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final nome = TextEditingController();
  final senha = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff0D0D0D),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  ImagemWidget(),
                  fieldWidget(
                    child: TextFormField(
                      controller: nome,
                      validator: (value) {
                        if(value!.isEmpty)
                          return "O nome não foi informado";
                        return null;
                      },
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: 'Nome',
                        labelStyle: TextStyle(color: Colors.black45),
                        border: InputBorder.none
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  fieldWidget(
                    child: TextFormField(
                      controller: senha,
                      obscureText: !_isVisible,
                      validator: (value) {
                        if(value!.isEmpty)
                          return "A senha não foi informada";
                        return null;
                      },
                      decoration: InputDecoration(
                          icon: const Icon(Icons.lock),
                          labelText: 'Senha',
                          labelStyle: const TextStyle(color: Colors.black45),
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            onPressed: () {
                              _isVisible = !_isVisible;
                              setState(() { });
                            },
                            icon: Icon(_isVisible ? Icons.visibility: Icons.visibility_off, color: Colors.black54),
                          )
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  buttonWidget(formKey: formKey, text: "LOGIN"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Não tem um cadastro?"),
                      TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Register()));
                        },
                        child: const Text("CADASTRE-SE")
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

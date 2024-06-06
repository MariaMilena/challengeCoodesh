import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:word_english/model/user_model.dart';

import '../../datasource/users_datasource.dart';
import '../../mobx_store/user_store.dart';
import '../../shared/widgets/field_widget.dart';
import 'shared/button_widget.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final nome = TextEditingController();
  final senha = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final _userStore = GetIt.I.get<UserStore>();

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
                  const ListTile(
                    title: Text(
                      "Cadastre uma nova conta",
                      style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                  ),
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
                      onChanged: (value) =>
                          _userStore.atualizarNome(nome:value),
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
                            icon: Icon(_isVisible ? Icons.visibility: Icons.visibility_off),
                          )
                      ),
                      onChanged: (value) =>
                          _userStore.atualizarSenha(senha:value),
                    ),
                  ),
                  const SizedBox(height: 20),
                  buttonWidget(formKey: formKey, text: "CADASTRE-SE", botaoCadastro: botaoCadastro),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Ja possui um cadastro?"),
                      TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: const Text("LOGIN")
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

  botaoCadastro() async {
    await UsersDatasource().create(
      UserModel(
          nome: _userStore.nome,
          senha: _userStore.senha
      )
    );
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Usuário cadastrado"))
    );
  }
}

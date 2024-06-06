// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserStore on _UserStore, Store {
  Computed<String>? _$nomeComputed;

  @override
  String get nome => (_$nomeComputed ??=
          Computed<String>(() => super.nome, name: '_UserStore.nome'))
      .value;
  Computed<String>? _$senhaComputed;

  @override
  String get senha => (_$senhaComputed ??=
          Computed<String>(() => super.senha, name: '_UserStore.senha'))
      .value;

  late final _$_nomeAtom = Atom(name: '_UserStore._nome', context: context);

  @override
  String? get _nome {
    _$_nomeAtom.reportRead();
    return super._nome;
  }

  @override
  set _nome(String? value) {
    _$_nomeAtom.reportWrite(value, super._nome, () {
      super._nome = value;
    });
  }

  late final _$_senhaAtom = Atom(name: '_UserStore._senha', context: context);

  @override
  String? get _senha {
    _$_senhaAtom.reportRead();
    return super._senha;
  }

  @override
  set _senha(String? value) {
    _$_senhaAtom.reportWrite(value, super._senha, () {
      super._senha = value;
    });
  }

  late final _$_UserStoreActionController =
      ActionController(name: '_UserStore', context: context);

  @override
  dynamic atualizarNome({required String nome}) {
    final _$actionInfo = _$_UserStoreActionController.startAction(
        name: '_UserStore.atualizarNome');
    try {
      return super.atualizarNome(nome: nome);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic atualizarSenha({required String senha}) {
    final _$actionInfo = _$_UserStoreActionController.startAction(
        name: '_UserStore.atualizarSenha');
    try {
      return super.atualizarSenha(senha: senha);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
senha: ${senha}
    ''';
  }
}

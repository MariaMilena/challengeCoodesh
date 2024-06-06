import 'package:mobx/mobx.dart';

/// flutter packages pub run build_runner build
/// flutter packages pub run build_runner watch - qualquer mudança que faz no código faz a reexecução

part 'user_store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {
  @observable
  String? _nome;

  @computed
  String get nome => _nome ?? '';

  @action
  atualizarNome({required String nome}) {
    _nome = nome;
  }

  @observable
  String? _senha;

  @computed
  String get senha => _senha ?? '';

  @action
  atualizarSenha({required String senha}) {
    _senha = senha;
  }
}
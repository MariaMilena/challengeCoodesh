import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  late int? id;
  late String nome;
  late String senha;

  UserModel({required this.nome, required this.senha});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    senha = json['senha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['senha'] = this.senha;
    return data;
  }

  @override
  List<Object?> get props => [id];
}
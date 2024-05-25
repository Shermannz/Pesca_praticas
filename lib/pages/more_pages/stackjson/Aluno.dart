// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Aluno {
  String nome;
  int idade;
  double peso;
  String escola;
  Aluno({
    required this.nome,
    required this.idade,
    required this.peso,
    required this.escola,
  });

  Aluno copyWith({
    String? nome,
    int? idade,
    double? peso,
    String? escola,
  }) {
    return Aluno(
      nome: nome ?? this.nome,
      idade: idade ?? this.idade,
      peso: peso ?? this.peso,
      escola: escola ?? this.escola,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'idade': idade,
      'peso': peso,
      'escola': escola,
    };
  }

  factory Aluno.fromMap(Map<String, dynamic> map) {
    return Aluno(
      nome: map['nome'] as String,
      idade: map['idade'] as int,
      peso: map['peso'] as double,
      escola: map['escola'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Aluno.fromJson(String source) => Aluno.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Aluno(nome: $nome, idade: $idade, peso: $peso, escola: $escola)';
  }

  @override
  bool operator ==(covariant Aluno other) {
    if (identical(this, other)) return true;
  
    return 
      other.nome == nome &&
      other.idade == idade &&
      other.peso == peso &&
      other.escola == escola;
  }

  @override
  int get hashCode {
    return nome.hashCode ^
      idade.hashCode ^
      peso.hashCode ^
      escola.hashCode;
  }
}

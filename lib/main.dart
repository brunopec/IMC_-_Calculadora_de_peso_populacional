import 'Pessoa.dart';
import 'dart:io';

void main() {
  // Nome
  String nome = "";
  while (nome.isEmpty) {
    stdout.write("Digite o nome: ");
    String? entrada = stdin.readLineSync();
    if (entrada != null && entrada.trim().isNotEmpty) {
      nome = entrada.trim();
    } else {
      print("Digite seu nome corretamente!");
    }
  }

  // Altura
  double altura = 0;
  while (altura <= 0) {
    stdout.write("Digite a altura (em metros): ");
    String? entrada = stdin.readLineSync();
    double? valor = double.tryParse(entrada ?? "");
    if (valor != null && valor > 0) {
      altura = valor;
    } else {
      print("Altura inválida! Digite sua altura novamente");
    }
  }

  // Peso
  double peso = 0;
  while (peso <= 0) {
    stdout.write("Digite o peso (em kg): ");
    String? entrada = stdin.readLineSync();
    double? valor = double.tryParse(entrada ?? "");
    if (valor != null && valor > 0) {
      peso = valor;
    } else {
      print("Peso inválido! Digite seu peso novamente");
    }
  }

  // Cria a pessoa com dados válidos
  Pessoa pessoa = Pessoa(nome, altura, peso);

  var resultado = pessoa.classificarIMC();
  print("Classificação: ${resultado['classificacao']}");
  print("Risco: ${resultado['risco']}");
}

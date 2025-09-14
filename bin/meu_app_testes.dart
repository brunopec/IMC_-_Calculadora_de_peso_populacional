import 'package:test/test.dart';
import 'package:meu_app_testes/Pessoa.dart';

void main() {
  test('calcularIMC sempre retorna um double', () {
    expect(Pessoa("Teste", 1.80, 80).calcularIMC(), isA<double>());
  });
}

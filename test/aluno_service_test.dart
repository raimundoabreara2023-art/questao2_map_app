import 'package:flutter_test/flutter_test.dart';
import 'package:questao2_map_app/services/aluno_service.dart';

void main() {
  group('Testes da Questão 2 - União de Mapas (Aluno e Dados Extras)', () {
    late AlunoService service;

    setUp(() {
      service = AlunoService();
    });

    test('Deve conter as chaves corretas no mapa aluno', () {
      final aluno = service.alunoMap;
      expect(aluno['nome'], equals('Raimundo de Abreu'));
      expect(aluno['curso'], equals('Ciência da Computação'));
      expect(aluno['semestre'], equals(4));
    });

    test('Deve conter as chaves corretas no mapa dadosExtras', () {
      final extras = service.dadosExtrasMap;
      expect(extras['idade'], equals(38));
      expect(extras['cidade'], equals('João Pessoa'));
    });

    test('Deve unir os dois mapas corretamente contendo todas as chaves unificadas', () {
      final mapaUnido = service.unirMapas();
      
      expect(mapaUnido.containsKey('nome'), isTrue);
      expect(mapaUnido.containsKey('curso'), isTrue);
      expect(mapaUnido.containsKey('semestre'), isTrue);
      expect(mapaUnido.containsKey('idade'), isTrue);
      expect(mapaUnido.containsKey('cidade'), isTrue);
      
      expect(mapaUnido['idade'], equals(38));
      expect(mapaUnido['cidade'], equals('João Pessoa'));
    });
  });
}
import '../models/aluno_model.dart';

class AlunoService {
  // Mapa contendo nome, curso e semestre
  final Map<String, dynamic> _aluno = {
    'nome': 'Raimundo de Abreu',
    'curso': 'Ciência da Computação',
    'semestre': 4,
  };

  // Mapa contendo idade e cidade
  final Map<String, dynamic> _dadosExtras = {
    'idade': 38,
    'cidade': 'João Pessoa',
  };

  Map<String, dynamic> get alunoMap => _aluno;
  Map<String, dynamic> get dadosExtrasMap => _dadosExtras;

  // Método para unir os dois mapas utilizando o operador de expansão (...) do Dart
  Map<String, dynamic> unirMapas() {
    final Map<String, dynamic> alunoCompleto = {
      ..._aluno,
      ..._dadosExtras,
    };
    return alunoCompleto;
  }

  // Método auxiliar integrado ao Model
  AlunoModel obterModeloCompleto() {
    final uniao = unirMapas();
    return AlunoModel(
      nome: uniao['nome'],
      curso: uniao['curso'],
      semestre: uniao['semestre'],
      idade: uniao['idade'],
      cidade: uniao['cidade'],
    );
  }
}
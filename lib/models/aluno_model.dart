class AlunoModel {
  String nome;
  String curso;
  int semestre;
  int idade;
  String cidade;

  AlunoModel({
    required this.nome,
    required this.curso,
    required this.semestre,
    required this.idade,
    required this.cidade,
  });

  // Converte o modelo para o Map unificado conforme a questão
  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'curso': curso,
      'semestre': semestre,
      'idade': idade,
      'cidade': cidade,
    };
  }
}
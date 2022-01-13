import 'dart:io';

void main() {
  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split('/');

  void calcIdade() {
    final anoNascimento = int.parse(inputs[2]);
    final nascimento = 2022 - anoNascimento;

    if (nascimento >= 18) {
      print("Pode dirigir!");
    } else {
      print("Não pode dirigir");
    }
  }

  calcIdade();
}

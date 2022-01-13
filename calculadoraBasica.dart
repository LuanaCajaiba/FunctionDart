import 'dart:io';

void main() {
  // double? primeiroValor = double.parse(stdin.readLineSync()!);
  // double? segundoValor = double.parse(stdin.readLineSync()!);

  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');

  final number1 = double.parse(inputs[0]);
  final operator = inputs[1];
  final number2 = double.parse(inputs[2]);

  double result = 0;
  switch (operator) {
    case '-':
      result = number1 - number2;
      break;
    case '+':
      result = number1 + number2;
      break;
    case '*':
      result = number1 * number2;
      break;
    case '/':
      result = number1 / number2;
      break;
  }

  final resultAprox = result.toStringAsFixed(5);
  final resultInteiro = result ~/ 1;
  final resultResto = result % 1;

  if (resultResto > 0) {
    print(double.parse(resultAprox));
  } else {
    print(resultInteiro);
  }
}

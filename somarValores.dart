import 'dart:io';

void main() {
  double? numero1 = double.parse(stdin.readLineSync()!);
  double? numero2 = double.parse(stdin.readLineSync()!);

  void myFunction() {
    print('A soma dos valores é: ');
    final result = numero1 + numero2;
    print(result);
  }

  myFunction();
}

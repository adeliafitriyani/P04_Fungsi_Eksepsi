import 'dart:io';
void main(List<String> args) {
 int a, b, c;
 stdout.write('Masukkan nilai a: ');
 a = int.parse(stdin.readLineSync() ?? (throw const FormatException('Input nilai a tidak tersedia.')));
 stdout.write('Masukkan nilai b: ');
 b = int.parse(stdin.readLineSync() ?? (throw const FormatException('Input nilai b tidak tersedia.')));
 if (b == 0) {
 throw Exception('SALAH: terdapat pembagian dengan nilai nol.');
 }
 c = a ~/ b;
 print('$a ~/ $b = $c');
}
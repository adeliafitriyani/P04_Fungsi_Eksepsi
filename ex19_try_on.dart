import 'dart:io';
void main(List<String> args) {
 int a, b, c;
 stdout.write('Masukkan nilai a: ');
 a = int.parse(stdin.readLineSync() ?? (throw const FormatException('Input nilai a tidak tersedia.')));
 stdout.write('Masukkan nilai b: ');
 b = int.parse(stdin.readLineSync() ?? (throw const FormatException('Input nilai b tidak tersedia.')));
 try {
 c = a ~/ b;
 print('$a ~/ $b = $c');
 } on IntegerDivisionByZeroException catch (exception, stackTrace) {
 print('SALAH: terjadi pembagian dengan nilai nol.');
 print('Jenis eksepsi: $exception');
 print('Stacktrace: $stackTrace');
 }
}
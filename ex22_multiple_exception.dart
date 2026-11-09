import 'dart:io';
void main(List<String> args) {
 int a, b, c;
 try {
 stdout.write('Masukkan nilai a: ');
 a = int.parse(stdin.readLineSync() ?? '');
 stdout.write('Masukkan nilai b: ');
 b = int.parse(stdin.readLineSync() ?? '');
 c = a ~/ b;
 print('$a ~/ $b = $c');
 } on FormatException {
 print('SALAH: nilai yang dimasukkan bukan bilangan.');
 } on UnsupportedError {
 print('SALAH: terjadi pembagian dengan nilai nol.');
 } catch (exception) {
 print('SALAH: terjadi eksepsi bertipe $exception.');
 } finally {
 print('Selesai...');
 }
}
import 'dart:io';
void main(){
  print("Nhap 1 so: ");double? a =double.parse(stdin.readLineSync()!);
  double b= a*a;
  print("Ket qua: $b");
}
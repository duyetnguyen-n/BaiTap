import 'dart:io';
void main(){
  print("Nhap 1 so a : ");int? a =int.parse(stdin.readLineSync()!);
  print("Nhap 1 so b : ");int? b =int.parse(stdin.readLineSync()!);
  double dung= a/b;
  int nguyen = a~/b;
  double sodu = dung - nguyen;
  print("Ket qua nguyen: $nguyen");
  print("so du : $sodu");
}
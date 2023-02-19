import 'dart:io';

void main(){
  print("Số người ăn : "); int ng = int.parse(stdin.readLineSync()!);
  print("Số tiền bill : "); double tien = double.parse(stdin.readLineSync()!);
  print("Số tiền từng người phải trả : ${tien/ng}");
}
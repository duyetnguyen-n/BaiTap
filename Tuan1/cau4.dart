import 'dart:io';

void main(){
  print("Nhap p : "); int? p = int.parse(stdin.readLineSync()!);
  print("Nhap t : "); int? t = int.parse(stdin.readLineSync()!);
  print("Nhap r : "); int? r = int.parse(stdin.readLineSync()!);
  double Fomula = (p * t*r)/100;
  print("Fomula = $Fomula" );
}
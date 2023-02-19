import 'dart:io';
void main(){
  print("Nhập 1 chữ số: ");
  String str = stdin.readLineSync()!;
  double a = double.parse(str);
  print("Kết quả nhân với 4 : ${a*4}" );
}
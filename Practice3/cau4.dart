import "dart:io";
void dientich(double r){
  print("Diện tích hình tròn với bán kính là $r tạm lấy số pi = 3,1414 là S = ${2*3.1414*r}");
}
void main(){
  print("Nhập r : "); double r =double.parse(stdin.readLineSync()!);
  dientich(r);
}
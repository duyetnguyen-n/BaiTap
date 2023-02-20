import "dart:io";
void main(){
  print("Nhap 1 số :");int a = int.parse(stdin.readLineSync()!);
  int s=0;
  for(int i=1;i<=a;i++){
    s=s+i;
  }
  print("Tổng các số nguyên dưới nó là: $s");
}
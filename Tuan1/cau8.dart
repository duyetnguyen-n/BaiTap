import 'dart:io';
void main(){
  int kq=0;

  print("Nhap 1 so > 10 : ");int a = int.parse(stdin.readLineSync()!);
  if(a<10){
    print("Loi!! Phai nhap 1 so lon hon 10");
    a = int.parse(stdin.readLineSync()!);
  }   
  while(a!=0){
    int tg = a%10;
    kq = kq*10+tg;
    a=a~/10;
  }
  print("$kq");
}
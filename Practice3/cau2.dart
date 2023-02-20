import 'dart:io';
void insochan(int a,int b){
  for(int i=a;i<=b;i++){
    if(i%2==0){
      print("$i ");
    }
  }
}
void main(){
  print("Từ số : "); int a = int.parse(stdin.readLineSync()!);
  print("Đến : "); int b = int.parse(stdin.readLineSync()!);
  insochan(a,b);
}
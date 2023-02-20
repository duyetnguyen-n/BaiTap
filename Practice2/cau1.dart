import "dart:io";
void main(){
  print("Nhap 1 so nguyen : "); int a = int.parse(stdin.readLineSync()!);
  if(a/2==0){
    print("$a là số chẵn");
  }
  else{
    print("$a là số lẻ");
  }
}
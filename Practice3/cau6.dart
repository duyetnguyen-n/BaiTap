import "dart:io";
void Daochuoi(String str){
  String s="";
  for(int i=str.length-1;i>=0;i--){
    s+=str[i];
  }
  print(s);
}
void main(){
  print("Nhap chuoi: "); String chuoi = stdin.readLineSync()!;
  Daochuoi(chuoi);
}
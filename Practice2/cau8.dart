import "dart:io";
void main(){
  int kt=1;
  while(kt!=0){
    print("Nhập số thứ nhất : "); int a = int.parse(stdin.readLineSync()!);
    print("Nhập số thứ nhất : "); int b = int.parse(stdin.readLineSync()!);
    print("Nhập phép tính : "); String pt = stdin.readLineSync()!;
    if(pt=="+")
      print("--> $a + $b = ${a+b}");
    if(pt=="-")
      print("--> $a - $b = ${a-b}");
    if(pt=="*")
      print("--> $a * $b = ${a*b}");
    if(pt=="/")
      print("--> $a / $b = ${a/b}");
    print("-----------------------------------------------------");
    print("*******Muốn tính toán tiếp nhập (1) , Dừng nhập (0) :"); int kts = int.parse(stdin.readLineSync()!); kt=kts;
  } 
}
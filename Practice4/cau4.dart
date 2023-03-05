import 'dart:io';
void main(){
  List<String> days = [];
  print("Hãy nhập tên của 7 ngày trong tuần(Không dấu) :"); 
  for(int i=0;i<7;i++){    
    print("ngày số ${i+1} : "); String ngay = stdin.readLineSync()!;
    days.add(ngay);
  }
  days.forEach((n)=> print(n));
}
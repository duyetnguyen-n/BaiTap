import 'dart:io';
void main(){
  List<double> ten = [];
  double s=0;
  print("Bạn muốn tính mấy số :"); int so = int.parse(stdin.readLineSync()!);
  for(int i=0;i<so;i++){
    print("Số ${i+1} : "); double a = double.parse(stdin.readLineSync()!);
    ten.add(a);
  }
  ten.forEach((n)=> {s=s+n});
  print("---> $s");
}
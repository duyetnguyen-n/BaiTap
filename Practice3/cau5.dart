import "dart:io";
import "dart:math";
void Pythagore(double a, double b,double c){
  if(a*a == b*b+c*c||c*c == b*b+a*a||b*b == a*a+c*c){
    print("Đây là tam giác vuông theo định luật Pythagore");
  }
}
void main(){
  print("Số 1 : "); double a = double.parse(stdin.readLineSync()!);
  print("Số 2 : "); double b = double.parse(stdin.readLineSync()!);
  print("Số 3 : "); double c = double.parse(stdin.readLineSync()!);
  Pythagore(a,b,c);
}
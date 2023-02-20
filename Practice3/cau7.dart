import "dart:math";
import "dart:io";
void power(int sn, int mu){
  print("power is ${pow(sn,mu)}");
}
int main(){
  print("Nhập 1 số nguyên : "); int a = int.parse(stdin.readLineSync()!);
  print("Nhập số mũ (từ 1->5) : "); int b = int.parse(stdin.readLineSync()!);
  if(b>5){
    print("Số mũ quá lớn có thể làm ảnh hưởng đến kết quả bạn có muốn tiếp tục? Nhấn (1), Hủy(2)");
    int lc = int.parse(stdin.readLineSync()!);
    if(lc==2)
      return 0;
  }
  power(a,b);
  return 0;
}
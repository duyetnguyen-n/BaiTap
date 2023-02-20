import "dart:math";
void randompp(){
  int min =100000;
  int max = 999999;
  print("Random is ${min+Random().nextInt((max + 1)-min)}");
}
void main(){
  randompp(); 
}
import 'dart:io';
void main(){
  for(int i=0;i<100;i++){
    new File('D:\\Dart\\filecau5\\'+'${i+1}.txt').createSync(recursive: true);
  } 
  print("Successful");
}
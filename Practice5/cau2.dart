import 'dart:io';
void main(){
  File file =  File('hello.txt');
  file.writeAsStringSync('\nLe Van Manh Anh',mode:FileMode.append);
  print(file.readAsStringSync());
}
import 'dart:io';
void main(){
  File file =  File('hello.txt');
  file.writeAsStringSync('Nguyen The Duyet');
  print(file.readAsStringSync());
}
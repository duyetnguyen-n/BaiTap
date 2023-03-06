import 'dart:io';
void main(){
  File file =  File('hello.txt');
  print(file.absolute.path);
}
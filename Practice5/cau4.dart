import 'dart:io';
void main(){
  new File('hello_copy.txt').createSync(recursive: true);
  File file =  File('hello_copy.txt');
  File('hello.txt').copySync('hello_copy.txt');
  print(file.readAsStringSync());
}
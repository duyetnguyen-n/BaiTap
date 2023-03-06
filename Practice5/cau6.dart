import 'dart:io';
void main(){
    File file = File('D:\\Dart\\Practice5\\hello_copy.txt');
    file.deleteSync();
    print("Successful");
}
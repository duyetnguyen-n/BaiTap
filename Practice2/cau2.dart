import "dart:io";
void main(){
  print("Nhập 1 chữ cái: "); String char = stdin.readLineSync()!;
  if(char=="a"||char=="A"||char=="e"||char=="E"||char=="i"||char=="I"||char=="o"||char=="O"||char=="u"||char=="U"){
    print("$char is Vowel");
  }
  else{
    print("$char is Consonant");
  }
}
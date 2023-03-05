
void main(){
  List<String> ten =["Mạnh","Hà","Duyệt","Anh","Hòa","Hải","Thái"];  
  List<String> a= ten.where((t) => t[0]=='A').toList();
  print(a);
}
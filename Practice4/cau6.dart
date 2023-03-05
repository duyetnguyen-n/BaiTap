import 'dart:io';
void main(){
  Map<String, dynamic> SinhVien = {
    'name':'Nguyen The Duyet',
    'address':'Lam Ha/Kien An/Hai Phong',
    'country':'Viet Nam'
  };
  SinhVien['country']= 'Japan';
  print("all keys: ${SinhVien.keys}");
  print("all values: ${SinhVien.values}");
}
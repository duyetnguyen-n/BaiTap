import 'dart:io';
void main(){
  new File('SinhVien.csv').createSync(recursive: true);
  File SV = File('SinhVien.csv');
  SV.writeAsStringSync('STT , Name , Age , Address\n');
  print("Ban muon nhap bao nhieu sinh vien ? \n"); int n = int.parse(stdin.readLineSync()!);
  for(int i=0;i<n;i++ ){
    print('Nhap ten sinh vien ${i+1}: '); String Ten = stdin.readLineSync()!;
    print('Nhap tuoi sinh vien ${i+1}: '); int Tuoi  = int.parse(stdin.readLineSync()!);
    print('Nhap dia chi sinh vien ${i+1}: '); String DiaChi = stdin.readLineSync()!;
    SV.writeAsStringSync('${i+1}, $Ten, $Tuoi,$DiaChi \n',mode:FileMode.append);
    //SV.writeAsStringSync('\n--------------------------------------------------\n');   
  }
  print('---------->> Successfull');
}
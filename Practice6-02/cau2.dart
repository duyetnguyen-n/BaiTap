import 'dart:math';

class Animal{
  int id;
  String name;
  String color;
  Animal(this.id,this.name,this.color);
}
class Cat extends Animal{
  String keu;
  Cat(int id,String name,String color, this.keu) :super(id,name,color);
  
}
void main(){
  Cat a = new Cat(1,'cho','vang','meow meow');
  print('id meo: ${a.id}');
  print('name meo: ${a.name}');
  print('color meo: ${a.color}');
  print('meo keu: ${a.keu}');
}
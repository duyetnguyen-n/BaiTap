class House{
  String id;
  String name;
  double prize;
  
  House(this.id,this.name,this.prize);

}
void main(){
  House h1 = House('1','villa',3.2);
  House h2 = House('2','home',3.2);
  House h3 = House('3','aaa',3.2);
  List<House> house = [h1,h2,h3];
  for(int i=0;i<house.length;i++){
    print('House id: ${house[i].id}');
    print('House name: ${house[i].name}');
    print('House prize: ${house[i].prize}');
  }
}
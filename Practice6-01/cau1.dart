
class Laptop {
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);
}

void main() {
  Laptop laptop1 = Laptop(1, 'Dell', 8);
  Laptop laptop2 = Laptop(2, 'HP', 16);
  Laptop laptop3 = Laptop(3, 'Lenovo', 32);

  List<Laptop> laptops = [laptop1, laptop2, laptop3];

  for(Laptop item in laptops) {
    print('Laptop ID: ${item.id}');
    print('Laptop Name: ${item.name}');
    print('Laptop RAM: ${item.ram} GB');
    print('');
  }
}

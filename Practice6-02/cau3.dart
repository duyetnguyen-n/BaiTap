class Camera{
  int id;
  String brand;
  String color;
  String prize;

  Camera(this.id,this.brand,this.color,this.prize);
  //int get layid {
  //  return this.id;
  //}
  //String get laybrand {
  //  return this.brand;
  //}
  //String get laycolor {
  //  return this.color;
  //}
  //String get layprize {
  //  return this.prize;
  //}  
  int get _id => id;
  String get _brand=>brand;
  String get _color => color;
  String get _prize => prize;
  
  
}
import 'dart:io';

void main() {

  //String? name; // Nullable variable
  String name = "Dhruv";
  name = "Ral";

  var no = 11;
  no = 16;

  //var vs Dynamic
  var nam;
  nam = 123;
  nam = "dhruvik";

//Object creation
  new Human();
  var human = Human();

  //functionn call
  human.printName();

//map declaration
  var boys = {'1': "dhruvik", '2': 12};
  print(boys['2']);


  human.addition(4,6);

}

class Human{
  Human(){
    stdout.write("hello");
  }

  void printName(){
    stdout.write('Hii');
  }

  void addition(int a, int b){
    stdout.write('${a+b}');
  }
// const String name;
}

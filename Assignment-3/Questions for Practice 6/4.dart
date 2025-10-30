class Animal {
  int? id;
  String? name;
  String? color;
}

class Cat extends Animal {
  String? sound;
  Cat(int id, String name, String color, this.sound) {
    this.id = id;
    this.name = name;
    this.color = color;
  }

  void showInfo() {
    print("Cat ID: $id || Name: $name || Color: $color || Sound: $sound");
  }
}

void main() {
  Cat cat1 = Cat(3001, "Persian", "Orange", "Meow");

  cat1.showInfo();
}

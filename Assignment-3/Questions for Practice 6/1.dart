class Laptop {
  int? id;
  String? brand;
  int? ram;

  Laptop(this.id, this.brand, this.ram);

  void showInfo() {
    print("Laptop ID: $id || Brand: $brand || RAM: ${ram} GB");
  }
}

void main() {
  Laptop laptop1 = Laptop(101, "Dell", 16);
  Laptop laptop2 = Laptop(102, "Asus", 8);
  Laptop laptop3 = Laptop(103, "HP", 12);

  laptop1.showInfo();
  laptop2.showInfo();
  laptop3.showInfo();
}

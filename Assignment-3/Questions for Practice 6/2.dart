class House {
  int? id;
  String? name;
  double? price;

  House(this.id, this.name, this.price);

  void showInfo() {
    print("House ID: $id || Name: $name || Price: \$$price");
  }
}

void main() {
  House house1 = House(201, "Villa", 250000);
  House house2 = House(202, "Apartment", 150000);
  House house3 = House(203, "Cottage", 120000);

  house1.showInfo();
  house2.showInfo();
  house3.showInfo();
}

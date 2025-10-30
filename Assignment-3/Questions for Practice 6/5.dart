class Camera {
  int? _id;
  String? _brand;
  String? _color;
  double? _price;

  set(int id, String brand, String color, double price) {
    this._id = id;
    this._brand = brand;
    this._color = color;
    this._price = price;
  }

  get() {
    print(
      "Camera ID: $_id || Brand: $_brand || Color: $_color || Price: \Tk $_price",
    );
  }
}

void main() {
  Camera camera1 = Camera();
  camera1.set(401, "Canon", "Black", 45500.00);

  Camera camera2 = Camera();
  camera2.set(402, "Nikon", "Silver", 52000.00);

  Camera camera3 = Camera();
  camera3.set(403, "Sony", "White", 70000.00);

  camera1.get();
  camera2.get();
  camera3.get();
}

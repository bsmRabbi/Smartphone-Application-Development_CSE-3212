void main() {
  Map<String, dynamic> person = {
    "name": "Rabbi",
    "address": "Sylhet",
    "age": 23,
    "country": "Bangladesh",
  };

  person["country"] = "USA";

  print("Updated Map:");
  person.forEach((key, value) {
    print("$key: $value");
  });
}

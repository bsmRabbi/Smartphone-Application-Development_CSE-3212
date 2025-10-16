void main() {
  Map<String, String> contacts = {
    "Bob": "01711",
    "Rafi": "01822",
    "Sami": "01933",
    "Sam": "01644",
    "Diya": "01555",
  };

  Iterable<String> keys4 = contacts.keys.where((key) => key.length == 4);

  print("Keys with length 4:");
  for (String key in keys4) {
    print(key);
  }
}

void main() {
  List<String> names = [
    'Arafat',
    'Proyas',
    'Mashrafi',
    'Biplob',
    'Rafi',
    'Sami',
    'Akash',
  ];
  List<String> a_name = names.where((name) => name.startsWith("A")).toList();
  print(a_name);
}

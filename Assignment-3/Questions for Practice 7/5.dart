int printNum(int? v) {
  if (v != null) {
    return v;
  } else {
    return 0;
  }
}

void main() {
  print(printNum(10));
  print(printNum(null));
}

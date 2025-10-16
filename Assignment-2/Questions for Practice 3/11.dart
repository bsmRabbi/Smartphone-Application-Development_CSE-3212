createUser(String nm, int age, [bool isActive = true]) {
  print("Name: $nm \nAge: $age \nActive: $isActive\n");
}

void main() {
  createUser("Rabbi", 23);
}

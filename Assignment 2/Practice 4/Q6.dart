void main() {
  Map<String, dynamic> person = {
    "name": "John",
    "address": "123 Street",
    "age": 25,
    "country": "USA"
  };

  person["country"] = "Canada";

  person.forEach((key, value) {
    print("$key: $value");
  });
}

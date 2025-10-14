void main() {
  Map<String, String> contacts = {
    "John": "12345",
    "Anna": "67890",
    "Mike": "54321",
    "Sara": "98765"
  };

  var keysWithLength4 = contacts.keys.where((k) => k.length == 4);

  for (var key in keysWithLength4) {
    print(key);
  }
}
